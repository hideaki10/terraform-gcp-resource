output "project_id" {
  description = "id of The GCP project "
  value       = google_project.project.project_id
}

output "project_name" {
  description = "name of The GCP project"
  value       = google_project.project.name
}

