provider "aws" {
  region      = var.aws_region
  max_retries = var.tf_provider_max_retries
  default_tags {
    tags = merge(var.common_aws_tags, var.common_overridden_aws_tags)
  }
  assume_role {
    role_arn    = "arn:aws:iam::${var.aws_account_id}:role/TerraformSpokeRole" 
   }  
}