# variable "rg_list" {
#   type = list(number)
#   default = [  0 , 1 , 2 ]
# }

# variable "rg_map" {
#   type = map(string)
#   default = {
#     "name" = "value"
#   }
# }

# variable "rg_new" {
#   type = object({
#     name = string
#     age = number
#     new = bool
#   })
#   default = {
#      name = "value",
#      age = 5
#      new = false
#   }
# }

# variable "rg_tuple" {
#   type = tuple([ number , string , bool ])
#   default = [ 0, "value", false ]
# }
# output "rgtuple" {
#   value=var.rg_tuple
# }
# output "rglist" {
#   value=var.rg_list
# }
# output "rgmap" {
#   value=var.rg_map
# }
# output "rgnew" {
#   value=var.rg_new
# }