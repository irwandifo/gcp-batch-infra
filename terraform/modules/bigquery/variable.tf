variable "project_id" {
  sensitive   = true
  description = "GCP project id."
  type        = string
}

variable "region" {
  description = "GCP region."
  type        = string
}

variable "bigquery_dataset_list" {
  description = "List of BigQuery datasets."
  type        = list(string)
}