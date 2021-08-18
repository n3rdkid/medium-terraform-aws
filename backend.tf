terraform {
  backend "s3" {
    bucket = "medium-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}