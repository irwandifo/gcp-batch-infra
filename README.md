# GCP Infrastructure for Batch Processing

This project sets up a lightweight and cost-effective batch processing infrastructure for data platform on GCP. It is designed for small-to-medium-scale data processing tasks, leveraging GCP services like Cloud SQL, VPC, Compute Engine, Cloud Storage, and BigQuery.

## Components

| **Categories**         | **Tools**       | **Details**                                     |
|------------------------|-----------------|-------------------------------------------------|
| Infrastructure-as-code | Terraform       | Automates infrastructure management.            |
| Database               | Cloud SQL       | Simulates PostgreSQL OLTP database.             |
| Networking             | VPC             | Secure Cloud SQL to Compute Engine Networking.  |
| Processing             | Compute Engine  | Deploy kestra to process workflows.             |
| Storage                | Cloud Storage   | Stores data in bronze and silver layer.         |
| Consumption            | BigQuery        | Stores data in gold/consumption layer.          |

## Architecture Diagram

![](img/gcp-batch-diagram.png)
