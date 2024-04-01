resource "google_container_cluster" "http" {
  name     = "http"
  location = "us-central1-a"
  initial_node_count       = 3
  network_policy {
    enabled = true
  }
  addons_config {
    http_load_balancing {
      disabled = true
    }  
  }
}
