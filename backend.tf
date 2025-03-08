terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"  # Change this to your S3 bucket
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
