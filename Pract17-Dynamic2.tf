# variable "additional_ports" {
#   type = map(object({
#     name = string
#     priority   = number
#     destination_port_range  = string
#   }))
#   default = {
#     ssh = {
#       name = "test123"
#       priority   = 100
#       destination_port_range  = "22"
#     },
#     http = {
#       name = "test124"
#       priority   = 101
#       destination_port_range  = "80"
#     }
#   }
# }

# resource "azurerm_resource_group" "example5" {
#   name     = "nsg-resources"
#   location = "West Europe"
# }

# resource "azurerm_network_security_group" "example5" {
#   name                = "acceptanceTestSecurityGroup1"
#   location            = azurerm_resource_group.example5.location
#   resource_group_name = azurerm_resource_group.example5.name

#   dynamic security_rule {
#     for_each = var.additional_ports
#     content {
#     name                       = security_rule.value.name
#     priority                   = security_rule.value.priority
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = security_rule.value.destination_port_range
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#     }
#   }

# }