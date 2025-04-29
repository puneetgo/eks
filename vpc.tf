module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-jenkins-vpc"
  cidr = var.cidr_block

  azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

  public_subnets = var.public

  enable_dns_hostnames = true

  tags = {
    Name        = "jenkins"
    Terraform   = "true"
    Environment = "dev"
  }


  public_subnet_tags = {
    Name  = "jenkins-subnet"
  }

}