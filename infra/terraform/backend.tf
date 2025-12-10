terraform {
  backend "s3" {
    bucket = "ci-cd-playground-terraform-lock"
    key    = "infra/terraform.tfstate"
    region = "us-east-1"
  }
}
