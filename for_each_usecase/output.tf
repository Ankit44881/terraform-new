output "firewall_rules" {
    value = [for firewall_name in google_compute_firewall.multiple_firewalls: firewall_name.name ]
  
}