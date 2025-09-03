resource "google_storage_bucket" "us_central_bucket" {
  name          = "123-scentralbucket-678"
  location      = "US-CENTRAL1"
  storage_class = "coldline"

  versioning {
    enabled = true

  }
}

resource "google_storage_bucket" "us_east_bucket" {
  provider      = google.us-east1
  name          = "123-bucketuseast1-786"
  location      = "US-EAST1"
  storage_class = "standard"

  versioning {
    enabled = true
  }
}

