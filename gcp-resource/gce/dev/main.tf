
module "gce-module" {
  source         = "../../module/gce"
  gce_name       = var.gce_name
  startup_script = file("./script/start_script.sh")
  image          = var.image
  tags           = var.tags
}

provider "google" {
  project = var.project
  region  = var.region
}

terraform {

  required_providers {
    google = ">= 3.34.0"
  }
}
