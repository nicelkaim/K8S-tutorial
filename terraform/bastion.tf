resource "google_compute_network" "bastionnet" {
  name = "bastionnet"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "bastionsubnet" {
  name          = "bastionnet"
  ip_cidr_range = "12.0.0.0/8"
  region        = "us-central1"
  network       = google_compute_network.bastionnet.name
  secondary_ip_range {
    range_name    = "bas-test-secondary-range1"
    ip_cidr_range = "192.168.10.0/24"
  }
}

resource "google_compute_address" "bastionstatic1" {
  name   = "bastionstatic1"
  region = "us-central1"
}

resource "google_compute_instance" "bastion" {
  name         = "bastion"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-1404-trusty-v20160627"
    }
  }

  network_interface {
    network = google_compute_network.bastionnet.id
    subnetwork = google_compute_subnetwork.bastionsubnet.id
    access_config {
      nat_ip = google_compute_address.bastionstatic1.address
    }
  }
}
