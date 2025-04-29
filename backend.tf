terraform {

  backend "s3" {
    bucket         = "terraform2231"
    key            = "terraform2231/terraformfile"
    region         = "us-east-1"
  

  }
}