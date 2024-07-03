# Strapi Deployment on AWS ECS using Terraform
ECS Strapi deployment and mapping it to my subdomain somesh.contenttech.in


## Flow Diagram 

![ECS Strapi ](https://github.com/SomeshRao007/ECS_Strapi/assets/111784343/2ef3fca1-eb1e-4610-8311-908b540030b0)




## Project Objective

The main goal of this project was to deploy Strapi, an open-source headless CMS, on AWS using a scalable, maintainable, and cost-effective cloud-native architecture. The project aimed to:

1. Utilize Infrastructure as Code (IaC) principles for reproducibility and version control.
2. Leverage serverless computing for reduced operational overhead.
3. Ensure high availability and fault tolerance.
4. Implement custom domain mapping for easy access.

## Implementation

This project was implemented using Terraform to provision and manage AWS resources. Here's a detailed breakdown of the steps taken:

### 1. Set Up Terraform Project

- Initialized a new Terraform project.
- Configured AWS provider and defined necessary variables.

### 2. Define VPC and Networking

- Created a VPC with public and private subnets across multiple Availability Zones.
- Set up Internet Gateway and NAT Gateways for internet connectivity.
- Configured route tables for proper network traffic flow.

### 3. Create ECS Cluster

- Defined an ECS cluster to manage Fargate tasks.

### 4. Set Up Application Load Balancer (ALB)

- Created an ALB in the public subnets.
- Configured listeners and target groups for routing traffic.

### 5. Define ECS Task and Service

- Created an ECS task definition specifying the Strapi Docker image.
- Defined an ECS service to run and maintain the desired number of tasks.

### 6. Configure Security Groups

- Set up security groups for the ALB and ECS tasks, ensuring proper access control.

### 7. Implement Route 53 DNS Configuration

- Created a Route 53 record to map the subdomain (somesh1.contentechno.in) to the ALB.

### 8. Set Up IAM Roles and Policies

- Created necessary IAM roles and policies for ECS tasks and services.

### 9. Configure Logging

- Set up CloudWatch log groups for ECS task logging.

### 10. Deploy and Test

- Applied the Terraform configuration to provision the infrastructure.
- Verified the deployment by accessing Strapi through the configured subdomain.

## Architecture Overview

The deployed architecture includes:

- AWS ECS with Fargate for running containerized Strapi application
- Application Load Balancer for distributing traffic
- VPC with public and private subnets across multiple Availability Zones
- Route 53 for DNS management
- Docker images pulled directly from Docker Hub

## Usage

To deploy this infrastructure:

1. Ensure you have Terraform installed and AWS credentials configured.
2. Clone this repository.
3. Navigate to the project directory.
4. Run `terraform init` to initialize the Terraform working directory.
5. Run `terraform plan` to see the execution plan.
6. Run `terraform apply` to create the infrastructure.

## Future Improvements

- Implement database persistence for Strapi data.
- Set up CI/CD pipeline for automated deployments.
- Implement monitoring and alerting using CloudWatch.

## Contributing

Contributions to improve the project are welcome. Please feel free to submit a Pull Request.

