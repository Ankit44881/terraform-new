output "cluster_name" {
  
  value = google_container_cluster.gke-cluster.name
}

output "endpoint"{
   value=google_container_cluster.gke-cluster.endpoint
}