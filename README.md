# AWS ECR Repository Setup for Hello World App

This repository contains Terraform code to provision an Amazon Elastic Container Registry (ECR) repository named "helloworldapp" in the specified AWS region. The repository is intended to host the Docker images for the "Hello World" application.

## Prerequisites

Before you begin, ensure you have the following:

- AWS access key and secret key with appropriate permissions.
- Terraform installed on your local machine.
- AWS CLI configured with appropriate access credentials.

## Getting Started

1. Clone this repository to your local machine.
2. Ensure you have fulfilled all prerequisites mentioned above.
3. Navigate to the directory containing the Terraform configuration file (`main.tf`).

## Configuration

1. Open the `main.tf` file.
2. Ensure that the variables `AWS_ACCESS_KEY` and `AWS_SECRET_KEY` are populated with your AWS access key and secret key.
3. Optionally, you can modify the default value of the `AWS_REGION` variable if you wish to deploy the ECR repository in a different AWS region.

## Usage

1. Initialize Terraform by running the following command:

   ```sh
   terraform init
   ```

2. Validate the Terraform configuration:

   ```sh
   terraform validate
   ```

3. Preview the changes that Terraform will make:

   ```sh
   terraform plan
   ```

4. Apply the Terraform configuration to create the ECR repository:
   ```sh
   terraform apply
   ```

## Output

Upon successful execution, Terraform will output the URL of the newly created ECR repository:

```bash helloworldapp-repository-URL = <repository_url>

```

## Accessing the Repository

You can now push Docker images to the ECR repository using the provided URL.

## Cleanup

To remove the provisioned resources and destroy the ECR repository, run:

```bash terraform destroy

```

## Notes

- Ensure that you handle AWS access keys and secret keys securely.
- Make sure to follow AWS best practices for security and access management.
- For production environments, consider incorporating this Terraform configuration into a CI/CD pipeline for automated deployments.

For more information on AWS ECR repositories and Terraform, refer to the [AWS ECR documentation](https://docs.aws.amazon.com/ecr/index.html) and [Terraform documentation](https://www.terraform.io/docs/index.html) respectively.
