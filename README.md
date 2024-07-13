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
| <a name="requirement_nomad"></a> [nomad](#requirement\_nomad) | 2.3.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | ~> 4 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
