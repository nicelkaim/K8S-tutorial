resource "google_container_cluster" "lion" {
  name     = "lion"
  location = "us-central1-a"
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "lion_nodes" {
  name       = "lion-nodepool"
  location   = "us-central1-a"
  cluster    = google_container_cluster.lion.name
  node_count = 1
  autoscaling {
    min_node_count = 1
    max_node_count = 3
  }
  node_config {
    machine_type = "e2-medium"

  }
}
