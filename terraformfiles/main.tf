# main.tf

provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

# Include other Terraform configuration files
terraform {
  required_version = ">= 0.12"
}

# Include other configuration files
include "vpc.tf"
include "subnets.tf"
include "internet_gateway.tf"
include "route_tables.tf"
include "nat_gateway.tf"
include "security_groups.tf"
include "ecs.tf"
include "load_balancer.tf"
include "rds.tf"
include "output.tf"
include "ecr.tf"
