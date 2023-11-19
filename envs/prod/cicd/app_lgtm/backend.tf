terraform {
  backend "s3" {
    bucket = "ryamate-tfstate"
    key    = "ryamate-tech-hub/prod/cicd/app_lgtm_v1.6.4.tfstate"
    region = "ap-northeast-1"
  }
}
