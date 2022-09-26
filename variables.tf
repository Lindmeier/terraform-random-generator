# ------------------------------------------------------------------------------
# Input Parameter
# ------------------------------------------------------------------------------

variable "type" {
  description = "type"
  type        = string
  #default = "VM"
  
  nullable = false
  #Contract Tests - mögliche Funktionen https://www.terraform.io/language/functions
  validation {   
    condition     = var.type == "VM" ||var.type == "DB"||var.type == "LB"
    error_message = "Type must be 'VM','DB','LB'"
  }
  
}