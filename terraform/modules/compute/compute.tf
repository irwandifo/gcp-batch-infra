# Create Compute Engine
resource "google_compute_instance" "vm" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  labels       = var.labels

  tags = ["https-server"]

  boot_disk {
    initialize_params {
      size  = var.disk_size
      type  = "pd-ssd"
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = var.subnet_self_link

    access_config {
      # Ephemeral IP address
    }
  }

  service_account {
    email  = var.service_account
    scopes = ["cloud-platform"]
  }

  scheduling {
    preemptible        = true
    provisioning_model = "SPOT"
    automatic_restart  = false
  }

}
