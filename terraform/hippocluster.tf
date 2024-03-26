resource "google_compute_network" "hipponet" {
  name                    = "hipponet"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "hipposubnet" {
  name = "hipposubnet"
  ip_cidr_range = "12.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.hipponet.id
  secondary_ip_range {
    range_name    = "hipposubnet-secondary-range"
    ip_cidr_range = "12.10.0.0/23"
  }
}

resource "google_container_cluster" "hippo" {
  name     = "hippo"
  location = "us-central1-a"
  initial_node_count       = 2
  network     = google_compute_network.hipponet.name
  subnetwork  = google_compute_subnetwork.hipposubnet.name
}
