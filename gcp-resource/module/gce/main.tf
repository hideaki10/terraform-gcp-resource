resource "google_compute_instance" "computer" {
  name         = var.gce_name
  machine_type = var.machine_type
  zone         = var.zone

  tags = var.tags



  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  metadata_startup_script = var.startup_script

}
