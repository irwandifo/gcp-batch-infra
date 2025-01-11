# Create BigQuery dataset
resource "google_bigquery_dataset" "private" {
  for_each = toset(var.bigquery_dataset_list)

  dataset_id = each.key
  location   = var.region
}

# Create BigQuery external connection
resource "google_bigquery_connection" "biglake" {
  connection_id = "biglake"
  location      = var.region
  cloud_resource {}
}

# Allow external connection to manage object in GCS
resource "google_project_iam_member" "project" {
  project = var.project_id
  role    = "roles/storage.objectAdmin"
  member  = "serviceAccount:${google_bigquery_connection.biglake.cloud_resource[0].service_account_id}"

  depends_on = [google_bigquery_connection.biglake]
}
