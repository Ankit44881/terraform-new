variable "project_id" {
  
}

variable "region" {
  
}

variable "firewall_rules" {
  
  type = map(string)

  default = {
    "allow-http" = "80"
    "allow-https" = "443"
    "allow-ssh" = "22"
    "allow-custom" = "8080"

  }
}