
terraform {
  backend "s3" {
    bucket = "shuvabuc008"
    key    = "mykey/tf/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "lock_table"
    encrypt = true
  }


required_providers {
    aws= {
        source= "hashicorp/aws"
        version = "4.20.0"
    }
}
}

provider "aws" {
  region = "us-east-1"
}