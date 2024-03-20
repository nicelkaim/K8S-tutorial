resource "google_container_cluster" "narwhal" {
  name     = "narwhal"
  location = "us-central1-a"
  initial_node_count       = 3
  network_policy {
    enabled = true
  }
}
 

