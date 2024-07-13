# Main definition

# Create Nomad token
resource "nomad_acl_token" "management" {
  type = "management"
  name = "Vault-managed"
}

resource "vault_nomad_secret_backend" "catch_all" {
  backend                   = "nomad"
  description               = "Nomad default secrets"
  address                   = var.nomad_addr
  default_lease_ttl_seconds = "3600"
  max_lease_ttl_seconds     = "86400"
  token                     = nomad_acl_token.management.secret_id
}
