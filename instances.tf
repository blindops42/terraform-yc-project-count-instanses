resource "yandex_compute_instance" "vm" {
  count       = var.vm_count
  name        = "vm-${count.index + 1}"
  platform_id = "standard-v1"

  resources {
    cores  = var.vm_cores
    memory = var.vm_memory
  }

  # ОС‑диск
  boot_disk {
    initialize_params {
      image_id = var.vm_image_id
    }
  }
  # Сетевой интерфейс – подключаем к приватной подсети,
  # включаем NAT (получаем публичный IP) и привязываем SG
  network_interface {
    subnet_id = yandex_vpc_subnet.demo_subnet.id
    nat       = true
    #security_group_ids = ["default-sg-enpitvve2n017hh351iv"]
  }

  # Добавляем публичный SSH‑ключ в метаданные экземпляра
  metadata = {
    ssh-keys = "ubuntu:${file(var.ssh_pub_key_path)}"
  }
}
