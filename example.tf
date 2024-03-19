terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}
provider "aws" {
    region = "us-east-1"
    shared_config_files       =["/home/ubuntu/.aws/config"]
    shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
      
    }
    resource "aws_instance" "terrform" {
        ami = "ami-07d9b9ddc6cd8dd30"
        instance_type = "t2.micro"
        key_name = "hp"
      
    }