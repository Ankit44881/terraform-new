provider "google" {
  project = var.project_id
  region = var.region
  credentials = file ("../vm_project/credentials.json")
}