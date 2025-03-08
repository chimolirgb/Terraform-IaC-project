terraform {
  backend "s3" {
    bucket         = "af-south-1"  
    key            = "terraform.tfstate"
    region         = "af-south-1"
    encrypt        = true
    use_lockfile = true
  }
}
