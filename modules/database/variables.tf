variable "resource_group_name" {
    type = string
    description = "name of resource group"
}

variable "location" {
    type = string
    description = "location of resource group"
}

variable "random_string" {
  type = string
  description = "random string to put after names"
}