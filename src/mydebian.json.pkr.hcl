
source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  folder_id           = "xxxxxxxxxxxxxxxxxx"
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = "xxxxxxxxxxxxxxxxx"
  token               = "xxxxxxxxxxxxxxxxx"
  use_ipv4_nat        = true
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    inline = ["echo 'hello from packer'"]
  }

}
