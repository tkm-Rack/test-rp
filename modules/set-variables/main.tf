data "tfe_project" "playground" {
  name         = var.tfc_project
  organization = var.tfc_organization
}

resource "tfe_variable_set" "test_rp_vars" {
  name         = "test-rp-vars"
  organization = var.tfc_organization
}

resource "tfe_project_variable_set" "project_vars" {
  project_id      = data.tfe_project.playground.id
  variable_set_id = tfe_variable_set.test_rp_vars.id
}
