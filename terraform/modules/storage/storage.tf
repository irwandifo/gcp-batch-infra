# Create GCS bucket
resource "google_storage_bucket" "lakehouse" {
  name                        = var.bucket_name
  project                     = var.project_id
  location                    = var.region
  storage_class               = var.storage_class
  labels                      = var.labels
  force_destroy               = true
  uniform_bucket_level_access = true

  hierarchical_namespace {
    enabled = true
  }

}

# Create GCS bucket object
resource "google_storage_bucket_object" "zone" {
  for_each = toset(var.lake_zone_list)

  name    = "${each.key}/"
  content = " "
  bucket  = google_storage_bucket.lakehouse.name
}
