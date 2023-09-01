terraform {
  backend "s3" {
    bucket  = "ws-multi-env"
    key     = "environments/prod/ws-app.tfstate"
    region  = "ap-southeast-1"
  }
}