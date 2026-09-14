provider "aws" {
  region = "us-east-1"
}

terraform {
  required_version = "1.3.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # 4.55.0 lacks AL2023 ami_type needed for EKS 1.34+ node groups
      version = "5.70.0"
    }
  }
}
