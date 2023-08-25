
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
 backend "remote" {
   organization = "teste-ecs"
   workdspaces (
      name = ecs-deploy
       )
 }
}

provider "aws" {
 region = "us-east-1"
}
