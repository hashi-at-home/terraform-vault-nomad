# variables.tf
# Use this file to declare the variables that the module will use.
variable "nomad_addr" {
  description = "Nomad Address"
  default     = "http://localhost:4646"
  type        = string
}
