# GCP Infrastructure for Batch Processing

Building the infrastructure for the data platform.

## Key Components

| **Category**           | **Tool/Technology**                     | **Details**                               |
|------------------------|-----------------------------------------|-------------------------------------------|
| Infrastructure-as-code | Terraform                               | Automates infrastructure management.      |
| Data Source            | Pagila                                  | Sample PostgreSQL database.               |
| Orchestration          | Kestra                                  | Coordinates workflows and tasks.          |
| Ingestion              | Kestra                                  | Manages data ingestion workflows.         |
| Storage                | Google Cloud Storage (GCS) and BigQuery | Stores data using Medallion Architecture. |
| Processing             | DuckDB and dbt+BigQuery                 | Performs data transformation.             |
| Data Quality           | Soda and dbt test                       | Ensures data accuracy and reliability.    |
| Alerting               | Resend                                  | Sends email notifications for issues.     |
| Consumption            | BigQuery                                | Data consumption layer.                   |
| Analytics              | Looker Studio and Evidence              | Analytics and visualizations layer.       |

## Data Flow

![](img/gcp-batch-diagram.png)
