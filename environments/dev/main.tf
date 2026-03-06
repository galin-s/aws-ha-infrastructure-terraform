module "vpc" {
  source      = "../../modules/vpc"
  vpc_cidr    = "10.0.0.0/16"
  environment = "dev"
}

module "security" {
  source = "../../modules/security"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source             = "../../modules/ec2"
  private_subnet_ids = module.vpc.private_subnet_ids
  ami_id             = "ami-0ecd75ef7998d592e"
  ec2_sg_name        = module.security.ec2_sg_name
  ec2_sg_id          = module.security.ec2_sg_id
  target_group_arn   = module.alb.target_group_arn
  instance_type      = "t3.micro"
  max_size           = 2
  min_size           = 2
  desired_capacity   = 2
}

module "alb" {
  source            = "../../modules/alb"
  alb_sg_id         = module.security.alb_sg_id
  public_subnet_ids = module.vpc.public_subnet_ids
  vpc_id            = module.vpc.vpc_id
  asg_name          = module.ec2.asg_name
}