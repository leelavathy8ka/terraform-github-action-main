provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
   ami 			= "ami-xxxxxxxx"
   instance_type 	= "t2.large"
}

terraform {
 backend "s3" {
  bucket = "s3"
  key    = "xxxxxx/terraform.tfstate"
  region = "us-east-1"
 }
}
