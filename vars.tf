variable "cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
  default     = "b1goeg74d0es4puo6idi"
}

variable "folder_id" {
  description = "Yandex Folder ID"
  type        = string
  default     = "b1gjpl81kmgsk8f3ua94"
}

variable "zone" {
  description = "Default availability zone"
  type        = string
  default     = "ru-central1-b"
}

variable "vm_count" {
  description = "Number of compute instances"
  type        = number
  default     = 3
}

variable "vm_cores" {
  description = "Number of CPU cores per VM"
  type        = number
  default     = 2
}

variable "vm_memory" {
  description = "RAM per VM (GB)"
  type        = number
  default     = 2
}

variable "vm_image_id" {
  description = "Base image for VMs"
  type        = string
  default     = "fd8tekibj7eld4eqtaed"
}

variable "ssh_pub_key_path" {
  description = "Path to SSH public key"
  type        = string
  default     = "yandexkey.pub"
}

variable "service_account_key_file_path" {
  description = "Path to service_account_key_file"
  type        = string
  default     = "authorized_key.json"
}