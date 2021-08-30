module "project" {
  source = "../"

  gcp_project_name = var.gcp_project_name
  gcp_project_id   = var.gcp_project_id
  billing_account  = var.billing_account
}
