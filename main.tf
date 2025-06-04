resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}
resource "docker_container" "nginx_container" {
  name  = var.container_name
  image = "nginx:latest"

  ports {
    internal = 80
    external = var.external_port
  }

  provisioner "local-exec" {
    command = "docker exec ${self.name} /bin/bash -c 'echo \"<h1>Hello from Terraform!</h1><p>Container: ${var.container_name}</p>\" > /usr/share/nginx/html/index.html'"
  }
}