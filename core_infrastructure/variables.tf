
variable "resource_group_name" {
    type = string
    description = "name of resource group"
    default     = "rg-hmhd-core:${terraform.workspace}"
}

variable "location" {
    type = string
    description = "location of resource group"
    default = "West Europe"
}

variable "path" {
    type = string
    description = "path to tfstate file"
    default     = "./terraform.tfstate"
}


