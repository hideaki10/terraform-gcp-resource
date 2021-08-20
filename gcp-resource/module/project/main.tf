module "project-factory" {

  source  = "terraform-google-modules/project-factory/google"
  version = "11.1.1"

  name              = var.project_name
  org_id            = var.project_id
  billing_account   = var.billing_account
  random_project_id = billing_account == null ? true : false
}
