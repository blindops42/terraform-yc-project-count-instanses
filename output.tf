output "yc_ansible_inventory" {
  value = join("\n", [for i in range(var.vm_count) : "yc-${i + 1} ansible_host=${yandex_compute_instance.vm[i].network_interface[0].nat_ip_address} ansible_user=ubuntu"])
}
output "yc_internal_ip" {
  value = join("\n", [for i in range(var.vm_count) : "yc${i + 1}_internal_ip: ${yandex_compute_instance.vm[i].network_interface[0].ip_address}"])
}