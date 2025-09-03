resource "google_compute_firewall" "multiple_firewalls" {
    for_each = var.firewall_rules
    name = each.key
    network = "default"

    allow   {
        protocol = "tcp"
        ports = [each.value]
    }
    source_ranges = ["0.0.0.0/0"]

  
}