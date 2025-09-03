resource "google_storage_bucket" "my_bucket" {
    name = var.bucket_name
    location = var.bucket_region
    storage_class = "COLDLINE"

    uniform_bucket_level_access = false
    soft_delete_policy {
      
      retention_duration_seconds = 604811
    }
    lifecycle_rule {
      action {
        type = "Delete"
        storage_class = null
      }
      condition {
        age = 90

      }
    }
  
}


resource "google_storage_bucket_object" "my_photo" {
    
  name   = "Khushi-Photo"
  source = "/Users/ankitraj/Downloads/WhatsApp Image 2025-08-13 at 15.08.15.jpeg"
  bucket = google_storage_bucket.my_bucket.name
}

resource "google_storage_object_access_control" "public_read" {
  bucket  = google_storage_bucket.my_bucket.name
  object = google_storage_bucket_object.my_photo.name
  role    = "READER"
  entity = "allUsers"
}




