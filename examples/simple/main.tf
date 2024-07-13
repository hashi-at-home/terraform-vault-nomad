provider "nomad" {
  # Configuration options
}

provider "vault" {

}

# Declare your backends and other terraform configuration here
# This is an example for using the consul backend.
terraform {
  backend "consul" {
    path = "terraform/modules/vault-nomad"
  }
}


module "example" {
  source = "../../"
}
