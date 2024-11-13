
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

variable "max_size_gb" {
  type = number
}

variable "sku_name" {
  type = string
}

variable "enclave_type" {
  type = string
}