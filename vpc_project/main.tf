resource "google_compute_network" "custom_vpc" {
    name =var.network_name
    auto_create_subnetworks = false
  
}

resource "google_compute_subnetwork" "custom_subnet" {
    name = var.subnet_name
    ip_cidr_range = var.subnet_cidr
    region = var.region
    network = google_compute_network.custom_vpc.id
  
}

resource "google_compute_firewall" "allow_ssh" {
    name = "${var.network_name}-allow-ssh"
    network = google_compute_network.custom_vpc.self_link
    

    allow {
      protocol = "tcp"
      ports = ["22"]
    }

    source_ranges = ["0.0.0.0/0"]

  
}


resource "google_compute_firewall" "allow_http" {
    name = "${var.network_name}-allow-http"
    network = google_compute_network.custom_vpc.self_link

    allow {
      protocol = "tcp"
      ports = ["80"]
    }
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_icmp" {
    name = "${var.network_name}-allow-icmp"
    network = google_compute_network.custom_vpc.self_link

    allow {
      protocol = "icmp"
      
    }
  source_ranges = ["0.0.0.0/0"]
}