resource "google_storage_bucket" "bucket" {
  name                            = var.name
  location                        = var.location
  storage_class                   = var.storage_class
  uniform_bucket_level_access     = var.uniform_bucket_level_access
  project                         = var.project
}
