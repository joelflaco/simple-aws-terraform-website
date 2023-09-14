# simple-aws-terraform-website

# Simple DevOps Project: 
Deploy a Static Website on AWS using Terraform
This project demonstrates how to deploy a basic static website on AWS using Terraform. The website content is hosted in an S3 bucket and is accessible via a public URL.

# Prerequisites
An AWS account with proper permissions.
Terraform installed on your local machine.

# Getting Started

1. Clone this repository to your local machine:

git clone https://github.com/joelflaco/simple-aws-terraform-website.git
cd simple-aws-terraform-website

2. Configure your AWS credentials either using the AWS CLI or by setting environment variables.

3. Update the terraform.tfvars file with your AWS access and secret keys.

# Project Structure
The project directory is structured as follows:

- main.tf: Terraform configuration for setting up the S3 bucket and website files.
- variables.tf: Variable definitions used in the Terraform configuration.
- terraform.tfvars: Provide your AWS access and secret keys here.
- index.html: The static website content written in HTML.

# Deploying the Website

1. Initialize Terraform:

terraform init

2. Apply the Terraform configuration:

terraform apply

Confirm the changes by typing yes.

3. After the deployment is complete, you'll see the S3 bucket URL in the output. Access this URL in your browser to view the static website.

# Cleaning Up
To avoid incurring charges, ensure that you destroy the resources when you're done:

terraform destroy

# Further Exploration
This project provides a simple introduction to deploying a static website on AWS using Terraform. To enhance your skills, you can:

- Add a custom domain and configure domain routing.
- Integrate a Content Delivery Network (CDN) for improved performance.
- Enhance security measures for the S3 bucket.

# License
This project is licensed under the MIT License.

