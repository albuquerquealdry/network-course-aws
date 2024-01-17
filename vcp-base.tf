module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "network-class-udemy"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1a"]
  private_subnets = ["10.0.1.0/28"]
  public_subnets  = ["10.0.2.0/28"]

  enable_nat_gateway = false
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}