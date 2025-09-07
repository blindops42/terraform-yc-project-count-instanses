resource "yandex_vpc_network" "demo_network" {
  name = "demo-network"
}

resource "yandex_vpc_subnet" "demo_subnet" {
  name = "demo-subnet"
  #zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.demo_network.id
  v4_cidr_blocks = ["10.0.1.0/24"]
}
