# Setting private IP for Cloud SQL
resource "google_compute_global_address" "private_ip_address" {
  name          = "private-ip-address"
  project       = var.project_id
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = var.vpc_id
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = var.vpc_id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
}

# Create Cloud SQL instance for PostgreSQL
resource "google_sql_database_instance" "postgresql" {
  name             = var.instance_name
  database_version = "POSTGRES_17"
  region           = var.region

  depends_on = [google_service_networking_connection.private_vpc_connection]

  settings {
    edition     = "ENTERPRISE"
    tier        = var.machine_type
    disk_size   = var.disk_size
    user_labels = var.labels
    ip_configuration {
      ipv4_enabled    = true
      private_network = var.vpc_id
    }
  }

  deletion_protection = false
}

resource "google_sql_database" "postgresql" {
  name     = var.database_name
  instance = google_sql_database_instance.postgresql.name
}
