variable "gcp_project_name" {
  description = "a name of  GCP project"
  type        = string
}

variable "gcp_project_id" {
  description = "a id of the GCP project"
  type        = string
}

variable "billing_account" {
  description = "Billing account for the GCP project"
  type        = string
}


variable "gcp_default_enabled_services" {
  description = "GCP API services to be enabled by default"
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

variable "gcp_additional_enabled_services" {
  description = "Additional GCP API services to be enabled per project"
  type        = list(string)

  default = []
}

variable "service_viewers" {
  description = "Viewers of the microservice"

  type    = list(string)
  default = []
}

variable "service_admins" {
  description = "Admins of the microservice"

  type    = list(string)
  default = []
}
