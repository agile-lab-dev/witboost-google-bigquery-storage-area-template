<p align="center">
    <a href="https://www.witboost.com/">
        <img src="docs/img/witboost_logo.svg" alt="witboost" width=600 >
    </a>
</p>

Designed by [Agile Lab](https://www.agilelab.it/), Witboost is a versatile platform that addresses a wide range of sophisticated data engineering challenges. It enables businesses to discover, enhance, and productize their data, fostering the creation of automated data platforms that adhere to the highest standards of data governance. Want to know more about Witboost? Check it out [here](https://witboost.com/platform) or [contact us!](https://witboost.com/contact-us)

This repository is part of our [Starter Kit](https://github.com/agile-lab-dev/witboost-starter-kit) meant to showcase Witboost's integration capabilities and provide a "batteries-included" product.

# BigQuery Storage Area Template

- [Overview](#overview)
- [Usage](#usage)

## Overview

Use this template to create a Storage Area on a BigQuery instance. The Storage Area is implemented as a single table, used to store data generated or consumed by the System's workloads.

Refer to the [Witboost Starter Kit repository](https://github.com/agile-lab-dev/witboost-starter-kit) for information on the Tech Adapter that can be used to deploy components created with this template.

### What's a Template?

A Template is a tool that helps create components inside a Data Mesh. Templates help establish a standard across the organization. This standard leads to easier understanding, management and maintenance of components. Templates provide a predefined structure so that developers don't have to start from scratch each time, which leads to faster development and allows them to focus on other aspects, such as testing and business logic.

For more information, please refer to the [official documentation](https://docs.witboost.com/docs/p1_user/p6_advanced/p6_1_templates/#getting-started).

This template uses Skeleton Entities. To instantiate it, a version of Witboost **greater or equal to 2.3** is required.

#### Skeleton Entities

Skeleton Entities provide a more dynamic and user-friendly approach to define systems and components. They seamlessly integrate with tools like the Editor Wizard and the Reverse Provisioning Wizard, allowing for easier entity management.

For more information, please refer to the [official documentation](https://docs.witboost.com/docs/p3_tech/p12_catalog/p12_2_skeleton_entities).

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

To get information on how to use this template, refer to this [document](./docs/index.md).

### Component Testing

To verify the component before deploying it along with the System, the component needs to be tested against a CUE Policy defined for [BigQuery Storage Area](./policies/storagearea.cue). This policy needs to be defined inside the **Governance** section of the Witboost Platform.

For more information, please refer to the [official documentation](https://docs.witboost.com/docs/p1_user/p5_managing_policies/p5_1_overview).


## License

This project is available under the [Apache License, Version 2.0](https://opensource.org/licenses/Apache-2.0); see [LICENSE](LICENSE) for full details.

## About Witboost

[Witboost](https://witboost.com/) is a cutting-edge Data Experience platform, that streamlines complex data projects across various platforms, enabling seamless system production and consumption. This unified approach empowers you to fully utilize your data without platform-specific hurdles, fostering smoother collaboration across teams.

It seamlessly blends business-relevant information, data governance processes, and IT delivery, ensuring technically sound data projects aligned with strategic objectives. Witboost facilitates data-driven decision-making while maintaining data security, ethics, and regulatory compliance.

Moreover, Witboost maximizes data potential through automation, freeing resources for strategic initiatives. Apply your data for growth, innovation and competitive advantage.

[Contact us](https://witboost.com/contact-us) or follow us on:

- [LinkedIn](https://www.linkedin.com/showcase/witboost/)
- [YouTube](https://www.youtube.com/@witboost-platform)