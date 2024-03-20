resource "google_container_cluster" "narwhal" {
  name     = "narwhal"
  location = "us-central1"
  cluster_autoscaling {
    enabled = true
  }
  network_policy {
    enabled = true
  }
}
