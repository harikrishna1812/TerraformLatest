terraform {
    required_providers {
        aws = {
            version = "5.48.0"
            source = "hashicorp/aws"
        }
      
    }

}
provider "aws" {
    region = "us-east-1"
      
}