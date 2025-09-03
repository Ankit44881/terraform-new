variable "project_id" {
    type = string
    default = "summer-nexus-468907-t1"
    description = "This is your project id"
  
}
variable "region" {
    type = string
    default = "us-east1"
    description = "This is your project region"
  
}


variable "vm_name" {
    type = string
    default = "my-vm"
    description = "This is your virtual machine's name"
  
}

variable "machine_type" {
    type = string
    default = "e2-micro"
    description = "This is your machine type"
  
}

variable "zone" {
    type = string
    default = "us-east1-b"
    description = "This is your VM zone"
  
}

variable "image" {
    type = string
    default = "debian-cloud/debian-11"
    
    description = "This is your os image"
  
}


variable "disk_size" {
    type = number
    default = 20
    description = "This is your disk size in GB"
  
}

variable "no_of_machines" {
    type = number
    default = 2
    description = "Number of machines to be created"
  
}