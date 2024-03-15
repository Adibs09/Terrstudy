# variable "rg_info" { 
#    type = map(string)
#    default = {
#      rg11 = "eastus",
#      rg21 = "eastus2"
#    }
# }


# resource "azurerm_resource_group" "example1" {
#   for_each = var.rg_info
#   name     = each.key
#   location = each.value
# }