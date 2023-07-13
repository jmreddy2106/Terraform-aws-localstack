provider "aws" {
    region = var.aws_region
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    skip_credentials_validation = true
    skip_metadata_api_check = true
    skip_requesting_account_id = true
    s3_use_path_style	  = true

    endpoints{
        ec2 = var.aws_end_point
        s3  = var.aws_end_point
    }
}