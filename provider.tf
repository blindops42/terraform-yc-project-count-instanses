terraform {
  #required_version = ">= 1.3.0"
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      #version = "~> 0.92"
    }
  }
}

provider "yandex" {
  # token     = 
  service_account_key_file = var.service_account_key_file_path
  	# не обязательный параметр (берется облако по умолчанию),
	# хотя в документации написано иначе (проверить)
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone = var.zone
}







