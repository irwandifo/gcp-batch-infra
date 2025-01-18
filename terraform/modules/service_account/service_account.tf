# Create service account
resource "google_service_account" "service_account" {
  account_id = var.service_account_name
  display_name = "Data Platform Service Account"
}

# Add nenecessary role
resource "google_project_iam_member" "project" {

  for_each = toset([
    "roles/storage.objectAdmin",
    "roles/compute.serviceAgent",
    "roles/compute.instanceAdmin.v1",
    "roles/bigquery.user",
    "roles/bigquery.dataEditor",
    "roles/bigquery.connectionAdmin"
  ])

  project = var.project_id
  role    = each.key
  member  = "serviceAccount:${google_service_account.service_account.email}"
}
