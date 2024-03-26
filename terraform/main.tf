#terraform {
#  required_providers {
#    google = {
#      source = "hashicorp/google"
#      version = "5.19.0"
#    }
#  }
#}

provider "google" {
  credentials = file("REPLACE/WITH/JSONFILEPATH")

  project = "REPLACE_WITH_PROJECTID"
  region  = "us-central1"
  zone    = "us-central1-c"
}
