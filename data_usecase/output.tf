output "project_number" {
    value = data.google_project.current.number
  
}

output "project_name" {
  
  value = data.google_project.current.name
}

output "latest_image_name" {
    value = data.google_compute_image.latest_image.name
  
}
output "latest_image" {
    value = data.google_compute_image.latest_image.self_link
  
}