# Main definition

# Create Nomad token
resource "nomad_acl_token" "management" {
  type = "management"
  name = "Vault-managed"
}

resource "vault_nomad_secret_backend" "nomad" {
  backend                   = var.nomad_backend
  description               = "Nomad secrets ${var.nomad_backend}"
  address                   = var.nomad_addr
  default_lease_ttl_seconds = "3600"
  max_lease_ttl_seconds     = "86400"
  token                     = nomad_acl_token.management.secret_id
}

# Create vault role for the nomad backend to issue tokens for nomad jobs
resource "vault_nomad_secret_role" "mgmt" {
  # backend  = vault_nomad_secret_backend.catch_all.backend
  backend  = vault_nomad_secret_backend.nomad.id
  role     = "mgmt"
  type     = "management"
  policies = [""]
}

# Create Vault policy from nomad monitoring data
resource "vault_policy" "nomad_monitoring" {
  name   = "nomad-monitoring"
  policy = file("${path.module}/policies/nomad-monitoring.hcl")
}

# Vault policy for nomad to read kv data for deployments and retrieve certificates
resource "vault_policy" "nomad_server" {
  name = "nomad-server"
  policy = templatefile("${path.module}/policies/nomad-server.hcl.tmpl", {
    pki_mount  = var.nomad_pki_int_mount_path,
    token_role = var.nomad_token_role_name
  })
}

# resource "vault_policy" "nomad_read" {
#   name   = "nomad-read"
#   policy = templatefile("${path.module}/policies/nomad-read.hcl.tmpl", { pki_mount = vault_mount.pki_hah_nomad_int.path })
# }

# resource "vault_policy" "nomad_tls" {
#   name   = "nomad-tls"
#   policy = templatefile("${path.module}/policies/nomad-tls.hcl.tmpl", { pki_mount = vault_mount.pki_hah_nomad_int.path })
# }

# # Vault mTLS
# # CA for Hashi at home
# resource "vault_mount" "pki_hah_nomad" {
#   path        = "pki_hah_nomad"
#   description = "CA for Nomad at home services"
#   type        = "pki"

#   default_lease_ttl_seconds = "604800"
#   max_lease_ttl_seconds     = "315360000"
# }
