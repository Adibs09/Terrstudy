# terraform {
#   backend "azurerm" {
#     resource_group_name  = "deep-rg"
#     storage_account_name = "anshuk6469"
#     container_name       = "terraform"
#     key                  = "prod.terraform.tfstate"
#   }
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~>3.0"
#     }
#     aws = {
#       source  = "hashicorp/aws"
#       version = "5.35.0"
#     }
#   }
# }
