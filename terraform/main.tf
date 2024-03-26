#terraform {
#  required_providers {
#    google = {
#      source = "hashicorp/google"
#      version = "5.19.0"
#    }
#  }
#}

provider "google" {
  credentials = file("key.json")

  project = "$GOOGLE_CLOUD_PROJECT"
  region  = "us-central1"
  zone    = "us-central1-c"
}
