terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"  # Change this to your S3 bucket
    key            = "terraform.tfstate"
    region         = "af-south-1"
    encrypt        = true
    use_lockfile = true
  }
}
