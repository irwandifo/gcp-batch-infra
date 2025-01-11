variable "project_id" {
  sensitive   = true
  description = "GCP project id."
  type        = string
}

variable "service_account_name" {
  sensitive   = true
  description = "GCP service account name."
  type        = string
}