#terraform {
#  required_providers {
#    google = {
#      source = "hashicorp/google"
#      version = "5.19.0"
#    }
#  }
#}

provider "google" {
  credentials = file("elkaim-function-5026a4c91cc7.json")

  project = "elkaim-function"
  region  = "us-central1"
  zone    = "us-central1-c"
}
