terraform {
  backend "s3" {
    bucket ="tf-s3-bucket-vardhan-practice"
    key="us-east-1/practice-vpc-lb/terraform.tfstate"
    region = "us-east-1"
    
  }
}