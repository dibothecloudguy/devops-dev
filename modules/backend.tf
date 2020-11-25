# lock = {
# backend = "dynamodb" 
#   config = {
#     state_file_id = "dibo-tf-state/" }
# }

terraform {
  backend "s3" {

    # This backend configuration is filled in automatically at test time by Terratest. If you wish to run this example
    # manually, uncomment and fill in the config below.

    bucket         = "dibo-tf-state"
    key            = "dibo-tf-state/terraform.tfstate"
    region         = "us-east-1"
    access_key =""
    secret_key=""
    #dynamodb_table = "dynamodb-terraform-state-lock"
    #encrypt        = true
  }
}

provider "aws" {
   region = "us-east-1"
}

# terraform {
#  backend “s3” {
#  encrypt = true
#  bucket = "terraform-remote-state-storage-s3"
#  dynamodb_table = "terraform-state-lock-dynamo"
#  region = us-west-2
#  key = path/to/state/file
#  }
# }
