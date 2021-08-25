
resource "google_project" "project" {
  name       = var.project_name
  project_id = var.project_id


}


resource "google_project_service" "gcp_api_service" {

  project = google_project.project.project_id


  for_each = toset(var.activate_apis)
  service  = each.key

  disable_on_destroy = false
}

resource "google_project_iam_member" "service_admins" {
  for_each = toset(var.service_admins)

  project = google_project.project.project_id
  role    = "roles/editor"
  member  = "user:${each.key}"
}
