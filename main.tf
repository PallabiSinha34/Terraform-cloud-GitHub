terraform {
    required_version = "~> 1.5.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "pallabiinfra" {
	ami = "ami-06ca3ca175f37dd66" 
	instance_type = "t2.nano"
}
