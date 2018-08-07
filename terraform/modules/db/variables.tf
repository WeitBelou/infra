variable ssh_public_key_file {
  description = "Path to public ssh key"
}

variable zone {
  description = "Compute zone"
  default     = "europe-west1-b"
}

variable "db_disk_image" {
  description = "Image for app"
  default     = "reddit-db-base"
}
