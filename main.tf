
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
 backend "s3" {
   bucket         = "cirobessa-terraform-state"
   key            = "state/ecs-terraform.tfstate"
   region         = "us-east-1"
   dynamodb_table = "terraform-state-lock-dynamo"
 }
}

provider "aws" {
 region = "us-east-1"
}
