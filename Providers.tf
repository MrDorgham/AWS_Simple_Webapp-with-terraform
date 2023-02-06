provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/devops/Terrafrom_projects/Terraform_Simple_webapp/aws-crid"]
  shared_config_files      = ["~/devops/Terrafrom_projects/Terraform_Simple_webapp/aws-conf"]
  profile                  = "Dorgham"
}
