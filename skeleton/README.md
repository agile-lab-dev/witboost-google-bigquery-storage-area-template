# ${{values.name | dump}}

- [Overview](#overview)
- [Usage](#usage)

## Overview

Use this component to create a single table within a BigQuery dataset.

### What's a Storage Area?

A Storage Area is what the components of a System use to persist data that is created or used by the various Workloads or served by Output Ports.

### BigQuery

BigQuery is a fully-managed, serverless cloud data warehouse offered by Google Cloud, designed to enable fast SQL queries and interactive analysis of large datasets. It abstracts infrastructure concerns, providing scalability, security, and ease of use for analysts and engineers alike.
Key features include:

- Serverless and Fully Managed: BigQuery automatically handles infrastructure, performance tuning, and resource provisioning, allowing users to focus on data and insights rather than operations.
- Separation of Storage and Compute: Like modern cloud warehouses, BigQuery separates compute and storage, enabling flexible scaling and cost optimization based on actual usage.
- Standard SQL Support: It supports ANSI SQL, making it accessible to users familiar with datasets.
- High Performance and Scalability: BigQuery can process petabytes of data quickly using Dremel-based execution and distributed computing under the hood.
- Integrated Machine Learning (BigQuery ML): Users can create and execute machine learning models directly within BigQuery using SQL, reducing the need to move data across services.
- Security and Access Control: Provides fine-grained access control via IAM, support for column-level security, and data encryption both at rest and in transit.
- Streaming and Real-Time Analytics: BigQuery allows streaming data inserts, enabling near real-time analytics without complex ingestion pipelines.
- Time Travel: Enables querying of historical data (up to 7 days) for rollback, recovery, or auditing purposes.
- Data Sharing and Federation: Allows secure data sharing across projects and organizations, and querying external data sources like Google Sheets, Cloud Storage, and Bigtable without ingestion.

Learn more about it on the [official website](https://cloud.google.com/bigquery/docs?hl=en).

## Usage

To get information about this component and how to use it, refer to this [document](./docs/index.md).