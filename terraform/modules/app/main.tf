resource "google_compute_instance" "app" {
  name         = "reddit-app"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["reddit-app"]

  boot_disk = {
    initialize_params {
      image = "${var.app_disk_image}"
    }
  }

  network_interface = {
    network = "default"

    access_config = {}
  }

  metadata {
    ssh-keys = "appuser:${file(var.ssh_public_key_file)}"
  }
}

resource "google_compute_firewall" "firewall_puma" {
  name    = "allow-puma-default"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }

  target_tags = ["reddit-app"]

  source_ranges = ["0.0.0.0/0"]
}
