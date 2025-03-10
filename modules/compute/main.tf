resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network    = var.vpc
    subnetwork = var.subnet

    access_config {
      # This assigns a public IP to the instance
    }
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${file(var.ssh_key)}"
  }

  tags = ["ssh-allowed"]
}

resource "google_compute_firewall" "ssh_firewall" {
  name    = "allow-ssh"
  network = var.vpc

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = var.allowed_ips
  target_tags   = ["ssh-allowed"]
}

