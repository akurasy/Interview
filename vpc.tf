module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "${var.candidate_last_name}-vpc"
  cidr = var.vpc_cidr

  azs             = ["us-east-1a"]
  private_subnets = [var.private_subnet_cidr]
  public_subnets  = [var.public_subnet_cidr]

  enable_nat_gateway = true
}
