resource "google_compute_instance" "my_exported_vm" {
    name = "export-vm"
    zone = "us-central1-a"
    machine_type = "e2-micro"
    tags = ["http-server"]


    boot_disk {
       initialize_params {
         image="debian-12-bookworm-v20250812"
            

         }
    }
    
   network_interface {
    network = "default"
    access_config {
      
    }
    
     
   }
  metadata = {
  enable-osconfig = "TRUE"
  ssh-keys        = "ankitraj:${file("~/.ssh/gcp-terraform-key.pub")}"
}

    service_account {
    email  = "542003492283-compute@developer.gserviceaccount.com"
    scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring.write",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
    ]
}

provisioner "remote-exec" {
  inline = [
    "sudo apt-get update -y",
    "sudo apt-get install -y nginx",
    "echo 'hello from terraform provisioner' | sudo tee /var/www/html/index.html"
  ]

  connection {
    type        = "ssh"
    host        = self.network_interface[0].access_config[0].nat_ip
    user        = "ankitraj"
    private_key = file("~/.ssh/gcp-terraform-key")
  }
}
depends_on = [ google_compute_firewall.allow_http ]

}
