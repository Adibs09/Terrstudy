# variable "rg_list" { 
#    type = list(string)
#    default = [ "rg1","rg2","rg3" ]
# }

# variable "rg_location" {
#     default = "eastus"
# }

# resource "azurerm_resource_group" "example" {
#   for_each = toset(var.rg_list)
#   name     = each.key//we can write value and key interchangeably
#   location = var.rg_location
# }