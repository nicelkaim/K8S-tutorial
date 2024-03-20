resource "google_container_cluster" "unicron" {
  name     = "unicron"
  location = "us-central1"
  initial_node_count       = 2
  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes   = true 
    master_ipv4_cidr_block = "10.13.0.0/28"
  }
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "10.0.0.7/32"
      display_name = "net1"
    gcp_public_cidrs_access_enabled = true
  }
#google_compute_address.bastionstatic.address
}
