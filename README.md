[![main](https://github.com/hashi-at-home/terraform-vault-nomad/actions/workflows/release.yml/badge.svg)](https://github.com/hashi-at-home/terraform-vault-nomad/actions/workflows/release.yml)[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![pre-commit.ci status](https://results.pre-commit.ci/badge/github/hashi-at-home/terraform-vault-nomad/main.svg)](https://results.pre-commit.ci/latest/github/hashi-at-home/terraform-vault-nomad/main) [![semantic-release: conventional](https://img.shields.io/badge/semantic--release-conventional-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

# Terraform Module for Nomad Secrets in Vault

This is a terraform module for provisioning a (Hashicorp) Nomad secrets mount in (Hashicorp) Vault.

## How to use

### Requirements

You need:

- existing Vault deployment
- Vault token capable of creating mounts (typically an admin or root-level)
- Nomad deployment

## Pre-commit hooks

<!-- Edit this section or delete if you make no change  -->

The [pre-commit](https://pre-commit.com) framework is used to manage pre-commit hooks for this repository.

## Examples

The `examples/` directory contains the example usage of this module.
These examples show how to use the module in your project, and are also use for testing in CI/CD.

<!--
Modify this section according to the kinds of examples you want
You may want to change the names of the examples or the kinds of
examples themselves
-->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.9.0 |
| <a name="requirement_nomad"></a> [nomad](#requirement\_nomad) | ~> 2 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nomad"></a> [nomad](#provider\_nomad) | 2.3.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 4.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nomad_acl_auth_method.vault](https://registry.terraform.io/providers/hashicorp/nomad/latest/docs/resources/acl_auth_method) | resource |
| [nomad_acl_token.management](https://registry.terraform.io/providers/hashicorp/nomad/latest/docs/resources/acl_token) | resource |
| [vault_jwt_auth_backend.nomad](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/jwt_auth_backend) | resource |
| [vault_jwt_auth_backend_role.nomad_jobs](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/jwt_auth_backend_role) | resource |
| [vault_nomad_secret_backend.nomad](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/nomad_secret_backend) | resource |
| [vault_nomad_secret_role.mgmt](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/nomad_secret_role) | resource |
| [vault_policy.nomad_monitoring](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy.nomad_read](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy.nomad_server](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy.nomad_tls](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |
| [vault_policy.nomad_workloads](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nomad_addr"></a> [nomad\_addr](#input\_nomad\_addr) | Nomad Address | `string` | `"http://localhost:4646"` | no |
| <a name="input_nomad_backend"></a> [nomad\_backend](#input\_nomad\_backend) | Name of the Nomad secrets mount on Vault | `string` | `"nomad"` | no |
| <a name="input_nomad_jwt_auth_path"></a> [nomad\_jwt\_auth\_path](#input\_nomad\_jwt\_auth\_path) | Path we will mount the JWT auth mechanism on for Nomad | `string` | `"nomad_jwt"` | no |
| <a name="input_nomad_pki_int_mount_path"></a> [nomad\_pki\_int\_mount\_path](#input\_nomad\_pki\_int\_mount\_path) | Path of the PKI mount which issues certificates to the Nomad cluster nodes | `string` | `"pki_hah_nomad_int"` | no |
| <a name="input_nomad_token_role_name"></a> [nomad\_token\_role\_name](#input\_nomad\_token\_role\_name) | Name of the role in Vault with which to issue the token | `string` | `"nomad-cluster"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
