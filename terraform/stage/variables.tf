variable project {
  description = "Project ID"
}

variable region {
  description = "Compute region"
  default     = "europe-west1"
}

variable zone {
  description = "Compute zone"
  default     = "europe-west1-b"
}

variable ssh_user {
  description = "User for ssh key"
}

variable ssh_private_key_file {
  description = "Path to private ssh key"
}

variable ssh_public_key_file {
  description = "Path to public ssh key"
}

variable "app_disk_image" {
  description = "Image for app"
  default     = "reddit-app-base"
}

variable "db_disk_image" {
  description = "Image for app"
  default     = "reddit-db-base"
}

variable "allowed_source_ranges" {
  type        = "list"
  description = "Allowed source IPs"
}
