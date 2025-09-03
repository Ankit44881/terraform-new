output "photo_url" {
    value = "This is the public url for your photo: https://storage.googleapis.com/${google_storage_bucket.my_bucket.name}/${google_storage_bucket_object.my_photo.name}"
    description = "This is the publice url for your photo"
  
}