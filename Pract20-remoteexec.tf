resource "azurerm_resource_group" "terraformrg1" {
  name     = "terraformrg1"
  location = "East US"
}

resource "azurerm_public_ip" "terraformpip1" {
  name                = "terraformpip1"
  resource_group_name = azurerm_resource_group.terraformrg1.name
  location            = azurerm_resource_group.terraformrg1.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}

output "IP1" {
  value = azurerm_public_ip.terraformpip1.ip_address
  
}

resource "azurerm_virtual_network" "terraform-vnet1" {
  name                = "terraform-vnet1"
  location            = azurerm_resource_group.terraformrg1.location
  resource_group_name = azurerm_resource_group.terraformrg1.name
  address_space       = ["10.2.0.0/16"]
  tags = {
    environment = "Production1"
  }
}


resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.terraformrg1.name
  virtual_network_name = azurerm_virtual_network.terraform-vnet1.name
  address_prefixes     = ["10.2.1.0/24"]
}

resource "azurerm_network_interface" "vm1nic1" {
  name                = "vm1nic1"
  location            = azurerm_resource_group.terraformrg1.location
  resource_group_name = azurerm_resource_group.terraformrg1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.terraformpip1.id
  }
}


resource "azurerm_network_security_group" "VMtestsg1" {
  name                = "VMtestsg1"
  location            = azurerm_resource_group.terraformrg1.location
  resource_group_name = azurerm_resource_group.terraformrg1.name

  security_rule {
    name                       = "ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
    security_rule {
    name                       = "Http"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
    tags = {
    environment = "Production"
  }
}


resource "azurerm_network_interface_security_group_association" "SGmapping" {
  network_interface_id      = azurerm_network_interface.vm1nic1.id
  network_security_group_id = azurerm_network_security_group.VMtestsg1.id
}

resource "azurerm_linux_virtual_machine" "VMtest1" {
  name                = "VMtest1"
  resource_group_name = azurerm_resource_group.terraformrg1.name
  location            = azurerm_resource_group.terraformrg1.location
  size                = "Standard_D2s_v4"
  admin_username      = "deep"
  admin_password      = "P@$$w0rd@123"
  disable_password_authentication = "false"
  network_interface_ids = [
    azurerm_network_interface.vm1nic1.id
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  connection {
    type = "ssh"
    user = self.admin_username
    password = self.admin_password
    host = self.public_ip_address
  }
  provisioner "file" {
    source = "ipadd.txt"
    destination = "/tmp/"
  }
  provisioner "remote-exec" {
    inline = [ "sudo apt upgrade",
    "sudo apt install apache2 -y",
    "sudo systemctl enable --now apache2", ]
  }
}

output "VMIP" {
  value = azurerm_public_ip.terraformpip1.ip_address
}