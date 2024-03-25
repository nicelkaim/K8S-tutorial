resource "google_container_cluster" "mongoose" {
  name     = "mongoose"
  location = "us-central1-a"
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "mongoose_nodes" {
  name       = "mongoose-nodepool"
  location   = "us-central1-a"
  cluster    = google_container_cluster.mongoose.name
  node_count = 4
  autoscaling {
    min_node_count = 1
    max_node_count = 5
  }
}
