# --------------------------------------------------
# GCP Variables
# --------------------------------------------------
variable "project_id" {
  sensitive   = true
  description = "GCP project id."
  type        = string
}

variable "region" {
  description = "GCP region."
  type        = string
}

variable "zone" {
  description = "GCP zone."
  type        = string
}

variable "service_account_name" {
  sensitive   = true
  description = "GCP service account name."
  type        = string
}

# --------------------------------------------------
# GCS Variables
# --------------------------------------------------
variable "bucket_name" {
  description = "GCS bucket name for data lakehouse."
  type        = string
}

variable "gcs_lake_zone_list" {
  description = "List of GCS data lake zone."
  type        = list(string)
}

# --------------------------------------------------
# Cloud SQL Variables
# --------------------------------------------------
variable "cloud_sql_name" {
  description = "Cloud SQL instance name."
  type        = string
}

variable "cloud_sql_machine" {
  description = "Cloud SQL instance machine type."
  type        = string
}

variable "cloud_sql_disk" {
  description = "Cloud SQL instance disk size."
  type        = number
}

variable "pg_database_name" {
  description = "PostgreSQL database name."
  type        = string
}

# --------------------------------------------------
# Compute Engine Variables
# --------------------------------------------------
variable "vm_name" {
  description = "Compute Engine instance name."
  type        = string
}

variable "vm_machine" {
  description = "Compute Engine instance machine type."
  type        = string
}

variable "vm_disk" {
  description = "Compute Engine instance disk size."
  type        = number
}

# --------------------------------------------------
# BigQuery Variables
# --------------------------------------------------
variable "bigquery_dataset_list" {
  description = "List of BigQuery datasets."
  type        = list(string)
}
