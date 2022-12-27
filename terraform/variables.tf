variable "rg_name" {
  type        = string
  description = "value"
  default     = "eagle_tf_rg"

  validation {
    condition     = length(var.rg_name) > 8 && substr(var.rg_name, 0, 8) == "eagle_tf"
    error_message = "The rg name value must be a valid id as per definition, starting with \"eagle_tf\"."
  }
}

variable "rg_location" {
  type        = string
  description = "location of resource"
  default     = "eastus"
}

