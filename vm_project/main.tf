resource "google_compute_instance" "my_vms" {
    count = var.no_of_machines
    name = "${var.vm_name}${count.index+1}"
    machine_type = var.machine_type
    zone = var.zone
    #desired_status = "RUNNING"
    
    boot_disk {
        initialize_params {
          image = var.image
          size = var.disk_size
          #labels = ""
        }
      
    }
    
    network_interface {
        network ="default"
        
        access_config {
          
          
        }
      
    }
    allow_stopping_for_update = true
     service_account {
    email  = "default"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

/*  metadata_startup_script = <<-EOT
    #!/bin/bash
    apt-get update -y
    apt-get install apache2 -y
    systemctl enable apache2
    systemctl start apache2
    echo "<h1>Hello from Ankit's created ${var.vm_name}${count.index + 1}</h1>" > /var/www/html/index.html
  EOT     */

  /* metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/gcp-key.pub")}"
  }
}

resource "null_resource" "copy_test_file" {
  count = var.no_of_machines

  provisioner "file" {
    source      = "testfile.txt"                # local file you want to copy
    destination = "/home/ubuntu/testfile.txt"   # where it should go on the VM
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/gcp-key")        # your private key
    host        = google_compute_instance.my_vms[count.index].network_interface[0].access_config[0].nat_ip
  }
}

resource "null_resource" "stop_apache" {
  count = var.no_of_machines

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/gcp-key")
    host        = google_compute_instance.my_vms[count.index].network_interface[0].access_config[0].nat_ip
  }

  */
}
 
  
