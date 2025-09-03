data "google_project" "current" {
  project_id=var.project_id
}

data "google_compute_image" "latest_image" {
    family = "debian-12"
    project = "debian-cloud"
  
}