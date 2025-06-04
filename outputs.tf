output "container_name_output" {
  description = "Name des erstellten Containers"
  value       = docker_container.nginx_container.name
}

output "container_external_port" {
  description = "Externer Port des Containers"
  value       = var.external_port
}

output "html_content_used" {
  description = "Verwendeter HTML Inhalt"
  value       = var.nginx_html_content
}