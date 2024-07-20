# variables.tf
# Use this file to declare the variables that the module will use.
variable "nomad_addr" {
  description = "Nomad Address"
  default     = "http://localhost:4646"
  type        = string
}

variable "nomad_backend" {
  description = "Name of the Nomad secrets mount on Vault"
  default     = "nomad"
  type        = string
}

variable "nomad_token_role_name" {
  description = "Name of the role in Vault with which to issue the token"
  default     = "nomad-cluster"
  type        = string
}

variable "nomad_pki_int_mount_path" {
  description = "Path of the PKI mount which issues certificates to the Nomad cluster nodes"
  default     = "pki_hah_nomad_int"
  type        = string
}

variable "nomad_jwt_auth_path" {
  description = "Path we will mount the JWT auth mechanism on for Nomad"
  default     = "nomad_jwt"
  type        = string
}
