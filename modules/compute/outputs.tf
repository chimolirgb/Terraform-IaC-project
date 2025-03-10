output "vm_public_ip" {
  description = "The public IP of the VM instance"
  value       = google_compute_instance.vm.network_interface.0.access_config.0.nat_ip
}
