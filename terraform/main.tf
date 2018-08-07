provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region = "europe-west1"
}

resource "google_compute_instance" "app" {
  name = "reddit-app"
  machine_type = "g1-small"
  zone = "europe-west1-b"
  metadata {
    ssh-keys = "${var.ssh-user}:${file(var.ssh-key-file)}"
  }
  boot_disk  {
    initialize_params {
      image = "reddit-base"
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
}
