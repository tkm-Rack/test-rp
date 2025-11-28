provider "tfe" {
}

terraform {
  cloud {
    organization = "rottedpear-org"

    workspaces {
      name = "test-rp"
    }
  }
}
