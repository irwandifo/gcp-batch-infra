variable "instance_name" {
  description = "Cloud SQL instance name."
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

variable "machine_type" {
  description = "Cloud SQL instance machine type."
  type        = string
}

variable "disk_size" {
  description = "Cloud SQL instance disk size."
  type        = number
}

variable "labels" {
  description = "Key/value label pairs."
  type        = map(string)
  default     = { "infra" : "oltp" }
}

variable "vpc_id" {
  description = "VPC network id."
  type        = string
}