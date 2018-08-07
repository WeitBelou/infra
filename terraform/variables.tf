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

variable instances_count {
  default     = 1
  description = "Count of reddit-app instances"
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

variable disk_image {
  description = "Image to be used for app"
  default     = "reddit-base"
}
