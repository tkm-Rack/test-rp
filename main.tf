resource "tfe_workspace" "test-rp" {
  name         = var.tfc_workspace
  organization = var.tfc_organization
  project_id   = tfe_project.playground.id
}

resource "tfe_project" "playground" {
  name         = var.tfc_project
  organization = var.tfc_organization
}

module "set_variables" {
  source           = "./modules/set-variables"
  tfc_organization = var.tfc_organization
  tfc_project      = var.tfc_project
}
