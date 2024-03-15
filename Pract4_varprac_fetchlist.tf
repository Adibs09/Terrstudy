# //Fetching values from a list
# variable "rg_list" { 
#    type = list(string)
#    default = [ "rg1","rg2","rg3" ]
# }

# variable "rg_location" {
#     default = "eastus"
# }

# resource "azurerm_resource_group" "example" {
#   name     = var.rg_list[0]
#   location = var.rg_location
# }

# resource "azurerm_resource_group" "example1" {
#   name     = var.rg_list[1]
#   location = var.rg_location
# }

# resource "azurerm_resource_group" "example2" {
#   name     = var.rg_list[2]
#   location = var.rg_location
# }

# output "rglist1main" {
#   value=var.rg_list
# }
# output "rglist1" {
#   value=azurerm_resource_group.example.name
# }
# output "rglist2" {
#    value=azurerm_resource_group.example1.name
# }
# output "rglist3" {
#   value=azurerm_resource_group.example2.name
# }
# output "rglist11" {
#   value=azurerm_resource_group.example.location
# }
# output "rglist21" {
#  value=azurerm_resource_group.example1.location
# }
# output "rglist31" {
# value=azurerm_resource_group.example2.location
# }