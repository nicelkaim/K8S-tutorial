resource "google_compute_network" "terraform-network" {
  name = "terraform-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "terrafom-subnet" {
  name          = "terraform-subnet"
  ip_cidr_range = "10.0.0.0/8"
  region        = "us-central1"
  network       = google_compute_network.terraform-network.name
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}
