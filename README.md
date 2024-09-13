# Terraform AWS Automation using GitHub and Terraform Cloud

## Introduction

This repository, `terraformtest`, is dedicated to gaining hands-on experience with **Terraform** for Infrastructure as Code (IaC). It contains Terraform configuration files that define the desired AWS infrastructure resources. The configuration files in this repository are connected to **Terraform Cloud**, enabling automated workflows that streamline infrastructure deployment.

Each time a push is made to this repository, it automatically triggers a Terraform plan in Terraform Cloud, allowing for a smooth and automated infrastructure management process on AWS.

## Workflow Overview

### 1. Create and Modify Terraform Configuration Files

In this repository, I define and manage infrastructure resources on AWS using **Terraform**. The configuration files specify resources like EC2 instances, S3 buckets, VPCs, and more. 

### 2. GitHub Repository Integration with Terraform Cloud

This repository is linked with **Terraform Cloud**, a powerful tool for collaboration and management of Terraform-based infrastructure. It allows for remote state management and the ability to automate Terraform runs.

Each time a configuration file is added, modified, or deleted, the following process is initiated:

### 3. Git Push to Trigger Terraform Plan

Upon pushing changes to this GitHub repository:
- **Terraform Cloud** detects the changes and automatically triggers a **Terraform Plan**.
- This plan outlines the changes Terraform will make to the AWS infrastructure, such as creating, updating, or destroying resources.

### 4. Review and Apply the Plan on Terraform Cloud

After reviewing the Terraform Plan on **Terraform Cloud**, I have the option to either:
- **Approve and Apply** the changes, resulting in Terraform executing the plan and provisioning the desired resources on AWS.
- Or **Reject** if the changes are not as expected or require further modification.

### 5. Automated AWS Resource Provisioning

Once the plan is applied, **Terraform Cloud** automatically communicates with AWS to provision or modify the resources as specified in the configuration files. It handles the infrastructure lifecycle, ensuring that the defined resources are provisioned in the cloud.

## Key Features of This Workflow

- **Automated CI/CD for Infrastructure**: Each Git push to this repository triggers a plan in **Terraform Cloud**.
- **Plan and Apply Approval**: The workflow includes a manual review step to approve the plan before it gets applied, ensuring no unintended changes occur.
- **AWS Resource Management**: Resources are managed and provisioned on AWS with minimal manual intervention.
- **Version Control**: Every change in the Terraform configuration files is tracked through GitHub, ensuring transparency and an audit trail.

## Prerequisites

To replicate this setup, you'll need:
- A **GitHub** account with a repository.
- A **Terraform Cloud** account with proper workspace and VCS integration.
- AWS credentials properly configured to allow Terraform to provision resources on your behalf.

## How to Use This Repository

1. Clone this repository to your local machine.
2. Modify or create new Terraform configuration files to define AWS resources.
3. Push the changes to this GitHub repository.
4. Review the **Terraform Plan** in **Terraform Cloud**.
5. Apply the plan to provision resources on AWS.

## Conclusion

This repository streamlines the process of deploying AWS infrastructure using **Terraform**, **GitHub**, and **Terraform Cloud**. With automated triggers on every push and a plan review process, this workflow ensures efficient, secure, and manageable infrastructure provisioning on AWS.
