provider "google" {

  project     = var.project_id
  region      = "us-central1"
  credentials = file("../vm_project/credentials.json")
}

provider "google" {
  alias       = "us-east1"
  project     = var.project_id
  region      = "us-east1"
  credentials = file("../vm_project/credentials.json")

}