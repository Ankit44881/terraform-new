module "vm_module" {
    source = "../vm_project"
    project_id = "summer-nexus-468907-t1"
    region = "us-east1"
    vm_name = "ansible-vm"
    machine_type = "e2-micro"
    zone = "us-east1-b"
    image = "debian-cloud/debian-11"
    disk_size = 10
    no_of_machines = 3
    
}

