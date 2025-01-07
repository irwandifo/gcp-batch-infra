variable "instance_name" {
  description = "Compute Engine instance name."
  type        = string
}

variable "service_account" {
  sensitive   = true
  description = "GCP service account."
  type        = string
}

variable "zone" {
  description = "GCP zone."
  type        = string
}

variable "machine_type" {
  description = "Compute Engine machine type."
  type        = string
}

variable "disk_size" {
  description = "Compute Engine instance disk size."
  type        = number
}

variable "labels" {
  description = "Key/value label pairs."
  type        = map(string)
  default     = { "infra" : "oltp" }
}

variable "subnet_self_link" {
  description = "Subnet self link."
  type        = string
}