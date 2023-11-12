terraform {
  backend "s3" {
     bucket = "chethandemo-terraform-statefile"
    key    = "GithubActions/terraform.tfstate"
    region = "us-east-1"
  }
}