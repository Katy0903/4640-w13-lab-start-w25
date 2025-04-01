terraform {
  required_version = ">= 1.10.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "myyybucketbcit"   
    key            = "terraform.tfstate"               
    region         = "us-west-2"                    
    encrypt        = true                            
    use_lockfile   = true                      
  }

}

provider "aws" {
  region = "us-west-2"
}

