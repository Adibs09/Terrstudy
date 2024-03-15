# variable "rg_name" { 
#     default = "deep"    # Default value for your variable
#     type = string     #type constraint for your variable
#     description = "Here we can provide the name of resource group?"
#     sensitive = true     #ensure this variable value will not be visible on your terminal
# }

# variable "rg_location" {
#     default = "eastus"
# }

# resource "azurerm_resource_group" "example456" {
#   name     = var.rg_name
#   location = var.rg_location
# }

# resource "azurerm_resource_group" "example789" {
#   name     = "${var.rg_name}-new"
#   location = var.rg_location
# }

# variable "rg_list" {
#      default = [  0 , 1 , 2 ]
# }
# output "rglist" {
#   value = var.rg_list
# }

