provider google{
    project = var.project_id
    region = var.bucket_region
    credentials = file ("../vm_project/credentials.json")
}