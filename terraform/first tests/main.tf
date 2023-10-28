resource "docker_image" "backend" {
    name = "debian:bullseye"
}

resource "docker_container" "backend" {
    image = docker_image.backend.image_id
    name = "backend"
}