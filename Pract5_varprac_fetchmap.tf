# //Fetching values from a map
# variable "rg_info" { 
#    type = map(string)
#    default = {
#      name1 = "rg1"
#      location = "eastus"
#      name2 = "rg2"
#      location2 = "eastus2"
#    }
# }

# resource "azurerm_resource_group" "example" {
#   name     = var.rg_info.name1
#   location = var.rg_info.location
# }

# resource "azurerm_resource_group" "example1" {
#   name     = var.rg_info.name2
#   location = var.rg_info.location2
# }
# output "rgmap1main" {
#   value=var.rg_info
# }