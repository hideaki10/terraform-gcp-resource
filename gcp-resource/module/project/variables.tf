variable "project_name" {
  description = "a name of The GCP project"
  type        = string
}

variable "project_id" {
  description = "a project_id of The GCP Project"
  type        = string

}

variable "service_admins" {
  description = "Admins of the microservice"

  type    = list(string)
  default = []
}


variable "activate_apis" {
  description = "the list of apis to activate within the project"
  type        = list(string)
  default = [
    "audit.googleapis.com",
    "bigquery.googleapis.com",
    "bigquerystorage.googleapis.com",
    "cloudbuild.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    "containerregistry.googleapis.com",
    "iam.googleapis.com",
    "iamcredentials.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "oslogin.googleapis.com",
    "stackdriver.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "artifactregistry.googleapis.com",
  ]
}

