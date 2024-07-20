run "acl_token" {
    command = plan
    assert {
        condition = nomad_acl_token.management.name == "Vault-managed"
        error_message = "Incorrect token name."
    }
}

variables {
    nomad_addr    = "http://nomad.service.consul:4646"
    nomad_backend = "nomad_test"
}

run "e2e" {
    command = apply
}
