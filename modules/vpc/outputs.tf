output "vpc_id" {
  description = "VPC ID"
  value       = google_compute_network.vpc.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = google_compute_subnetwork.public_subnet.id
}

output "private_subnet_id" {
  description = "Private subnet ID"
  value       = google_compute_subnetwork.private_subnet.id
}
