terraform {
  required_version = "~>1.0"

  required_providers {
    google = {
      version = ">= 3.86"
    }
  }
}

provider "google" {
  region = "asia-northeast1"
}


resource "google_compute_instance" "test-instance" {}
