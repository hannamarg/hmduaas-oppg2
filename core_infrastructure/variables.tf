
variable "resource_group_name" {
    type = string
    description = "name of resource group"
    default     = "rg-hmhd-core"
}

variable "location" {
    type = string
    description = "location of resource group"
    default = "West Europe"
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