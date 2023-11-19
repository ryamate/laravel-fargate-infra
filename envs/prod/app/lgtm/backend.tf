terraform {
  backend "s3" {
    bucket = "ryamate-tfstate"
    key    = "ryamate-tech-hub/prod/app/lgtm_v1.6.4.tfstate"
    region = "ap-northeast-1"
  }
}
