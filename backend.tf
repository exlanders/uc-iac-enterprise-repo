terraform {
  backend "s3" {
    bucket          = "s3-uc-tf-demo-01-tfstate"
    encrypt         = true
    key             = "terraform.tfstate"
    region          = "us-east-1"
    dynamodb_table  = "tf-state-lock-table"
  }
}
