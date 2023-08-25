
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
 backend "remote" {
   organization = "teste-ecs"
   workspaces (
      name = TF_ECS_DEPLOY
       )
 }
}

provider "aws" {
 region = "us-east-1"
}
