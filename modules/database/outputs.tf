output "db_instance_name" {
  description = "Cloud SQL instance name"
  value       = google_sql_database_instance.db_instance.name
}

output "db_private_ip" {
  description = "Private IP of Cloud SQL instance"
  value       = google_sql_database_instance.db_instance.private_ip_address
}
