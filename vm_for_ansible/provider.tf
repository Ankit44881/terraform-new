terraform {
  required_providers {
    google ={
        source = "hashicorp/google"
        version = "6.47.0"
    }
  }
}


provider "google" {
    project ="summer-nexus-468907-t1"
    region = "us-east1"
    credentials = file(var.path)
  
}