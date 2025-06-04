variable "container_name" {
  description = "Name des Nginx Containers"
  type        = string
  default     = "my-flex-nginx-container"
}

variable "external_port" {
  description = "Externer Port für den Nginx Container"
  type        = number
  default     = 8080
}

variable "nginx_html_content" {
  description = "HTML Inhalt für die index.html"
  type        = string
  default     = "<h1>Hello from Terraform!</h1><p>Container: Default Container</p>"
}