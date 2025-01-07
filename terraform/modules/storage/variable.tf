variable "bucket_name" {
  description = "GCS bucket name."
  type        = string
}

variable "project_id" {
  sensitive   = true
  description = "GCP project id."
  type        = string
}

variable "region" {
  description = "GCP region."
  type        = string
}

variable "storage_class" {
  description = "GCS bucket storage class."
  type        = string
  default     = "STANDARD"
}

variable "labels" {
  description = "Key/value label pairs."
  type        = map(string)
  default     = {"infra":"lakehouse"}
}