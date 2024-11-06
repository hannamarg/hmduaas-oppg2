
variable "resource_group_name" {
    type = string
    description = "name of resource group"
}

variable "location" {
    type = string
    description = "location of resource group"
}

#hentet fra global main.tf
output "random_string" {
  value = data.terraform_remote_state.global.outputs.random_string
}