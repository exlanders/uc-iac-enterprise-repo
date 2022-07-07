
module "vpc" {
  source = "./modules/module-vpc"

  name = "uc-tf-demo-001-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    deployment-type   = "terraform"
    environment       = "dev"
    project-id        = "uc-poc-001"
    deploy-method     = "terraform"
  }

}

module "ec2-001" {
  source = "./modules/module-ec2"

  name = "ec2-instance-001"

  ami                    = "ami-0022f774911c1d690"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = module.vpc.private_subnets[0]

  tags = {
    deployment-type     = "terraform"
    environment         = "poc"
    project-id        = "landers-poc-002"
  }
}

module "ec2-002" {
  source = "./modules/module-ec2"

  name = "ec2-instance-002"

  ami                    = "ami-0022f774911c1d690"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = module.vpc.private_subnets[0]

  tags = {
    deployment-type     = "terraform"
    environment         = "poc"
    project-id        = "landers-poc-002"
  }
}

module "ec2-003" {
  source = "./modules/module-ec2"

  name = "ec2-instance-003"

  ami                    = "ami-0022f774911c1d690"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = module.vpc.private_subnets[0]

  tags = {
    deployment-type     = "terraform"
    environment         = "poc"
    project-id        = "landers-poc-002"
  }
}
module "ec2-004" {
  source = "./modules/module-ec2"

  name = "ec2-instance-004"

  ami                    = "ami-0022f774911c1d690"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = module.vpc.private_subnets[0]

  tags = {
    deployment-type     = "terraform"
    environment         = "poc"
    project-id        = "landers-poc-002"
  }
}

module "ec2-005" {
  source = "./modules/module-ec2"

  name = "ec2-instance-005"

  ami                    = "ami-0022f774911c1d690"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = module.vpc.private_subnets[0]

  tags = {
    deployment-type     = "terraform"
    environment         = "poc"
    project-id        = "landers-poc-002"
  }
}