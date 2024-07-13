run "acl_token" {
    command = plan
    assert {
        condition = nomad_acl_token.management.name == "Vault-managed"
        error_message = "Incorrect token name."
    }
}
