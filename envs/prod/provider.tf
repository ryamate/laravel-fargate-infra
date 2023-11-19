terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.25.0"
    }
  }

  required_version = "1.6.4"
}

provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      Env    = "prod"
      System = "ryamate-tech-hub"
    }
  }
}
