resource "google_container_cluster" "mongoose" {
  name     = "mongoose"
  location = "us-central1-a"
  initial_node_count       = 2
  cluster_autoscaling {
    enabled = true
  }
}
