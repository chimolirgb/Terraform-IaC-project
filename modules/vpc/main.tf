resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = var.public_subnet_name
  region        = var.region
  network       = google_compute_network.vpc.id
  ip_cidr_range = var.public_subnet_cidr
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = var.private_subnet_name
  region        = var.region
  network       = google_compute_network.vpc.id
  ip_cidr_range = var.private_subnet_cidr
  private_ip_google_access = true
}
