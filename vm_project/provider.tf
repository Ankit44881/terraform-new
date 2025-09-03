terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.47.0"
    }
  }
}

/* provider "google" {
    project = var.project_id
    region = var.region
    credentials = file("credentials.json")
  # Configuration options
} */