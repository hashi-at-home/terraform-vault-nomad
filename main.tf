# Main definition

# Create Nomad token
resource "nomad_acl_token" "management" {
  type = "management"
  name = "Vault-managed"
}
