# Terraform Load Balancer

## Overview
This repository contains Terraform code to provision a complete load balancer infrastructure. The load balancer efficiently distributes traffic among backend servers, ensuring high availability, scalability, and reliability.

## Features
- Fully automated infrastructure provisioning using Terraform
- Supports multiple backend servers for load distribution
- Configurable health checks for monitoring backend server availability
- Auto-scaling support for handling varying levels of traffic
- Secure network setup with appropriate firewall rules
- Modular design for easy customization and reusability

## Prerequisites
Before using this Terraform module, ensure you have the following:
- [Terraform](https://www.terraform.io/downloads.html) installed
- A cloud provider account (AWS, Azure, GCP, etc.)
- Proper access credentials configured for Terraform

## Usage
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/your-repository.git
   cd your-repository
   ```
2. Initialize Terraform:
   ```sh
   terraform init
   ```
3. Plan the infrastructure deployment:
   ```sh
   terraform plan
   ```
4. Apply the changes to create the load balancer:
   ```sh
   terraform apply -auto-approve
   ```
5. To destroy the infrastructure when no longer needed:
   ```sh
   terraform destroy -auto-approve
   ```

## Configuration
You can modify the `variables.tf` file to customize various parameters such as:
- Load balancer type (Application, Network, etc.)
- Backend server instances
- Health check settings
- Security rules

## Outputs
After applying the Terraform configuration, key outputs such as the load balancer's public endpoint and backend instance details will be displayed.

## Contributing
Contributions are welcome! Feel free to fork the repository, submit issues, or create pull requests.

## Note
please modify the value of path in targetgroup.tf from /health to /.

## Author
Created by vardhan reddy.

