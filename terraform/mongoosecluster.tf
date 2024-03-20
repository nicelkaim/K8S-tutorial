resource "google_container_cluster" "mongoose" {
  name     = "mongoose"
  location = "us-central1"
  cluster_autoscaling {
    enabled = true
  }
}
