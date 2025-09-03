terraform{
required_providers {
  google={
    source = "hashicorp/google"
    version = "~> 5.0"
  }
}
}

provider "google" {
    project= "summer-nexus-468907-t1"
    credentials = file("../vm_project/credentials.json")
}