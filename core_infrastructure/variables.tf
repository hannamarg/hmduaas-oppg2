
variable "resource_group_name" {
    type = string
    description = "name of resource group"
    default     = "rg-demo-core"
}

variable "location" {
    type = string
    description = "location of resource group"
}

variable "path" {
    type = string
    description = "path to tfstate file"
    default     = "./terraform.tfstate"
}


