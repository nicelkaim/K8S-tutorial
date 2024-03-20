resource "google_compute_address" "bastionstatic" {
  name = "bastionstatic"
}

resource "google_compute_instance" "bastion" {
  name         = "bastion"
  machine_type = "n2-standard-2"
  zone         = "us-central1-c"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = google_compute_network.terraform-network.name

    access_config {
      nat_ip = google_compute_address.bastionstatic.address
    }
  }
}

