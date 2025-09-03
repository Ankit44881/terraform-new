output "vpc_name_self_link" {
    value = google_compute_network.custom_vpc.self_link
  
}

output "subnet_name_self_link" {
    value = google_compute_subnetwork.custom_subnet.self_link
  
}

output "firewall_rule_names" {
    value =[google_compute_firewall.allow_http.name,google_compute_firewall.allow_ssh.name, google_compute_firewall.allow_icmp.name]
  
}