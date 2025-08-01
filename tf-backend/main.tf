terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.5.0"
    }
  }
  backend "s3" {
    bucket = "demo-bucket-0157ce7012033f5f"
    key =  "backend.tfstate"
    region =  "ap-south-1"
    
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_instance" "myserver" {
    ami = "ami-0d0ad8bb301edb745"
    instance_type = "t2.nano"

    tags = {
        Name = "SampleServer"
    }
  
}