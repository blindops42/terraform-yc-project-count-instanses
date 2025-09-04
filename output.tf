output "ansible_inventory_file" {
  value = join("\n", [for i in range(var.vm_count) : server-${i + 1} ansible_host=${yandex_compute_instance.vm[i].network_interface[0].nat_ip_address} ansible_user=ubuntu])
}
