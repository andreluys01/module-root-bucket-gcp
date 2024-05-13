terraform {
  backend "gcs" {
    bucket  = "terraform-state-dev-unifique"
    prefix  = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.24"
    }
  }
}

provider "google" {}

module "bucket2" {
  source                        = "../"
  name                          = "example-name-bucket"
  location                      = "us-east1"
  storage_class                 = "STANDARD"
  uniform_bucket_level_access   = true
  public                        = false
  project                       = "unifique-5g"
}