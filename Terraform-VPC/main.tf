module "vpc" {
    source   = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
  
}
module "sg" {
    source = "./modules/sg"
    vpc_id = module.vpc.vpc_id
  
}
module "ec2" {
  source = "./modules/ec2"
  sg_id = module.sg.sg_id
  subnets = module.vpc.subnet_id
  
}
module "alb" {
    source = "./modules/alb"
    sg_id = module.sg.sg_id
    subnets = module.vpc.subnet_id
    vpc_id = module.vpc.vpc_id
    instances = module.ec2.instances
}
# module "dns" {
#     source = "./modules/dns"
#     domain_name = var.domain_name
#     alb_dns = module.alb.aws_alb_dns_name
#     alb_zone_id = module.alb.aws_alb_zone_id
#     vpc_id = module.vpc.vpc_id
# }
module "zone" {
    source = "./modules/zone"
    domain_name = var.domain_name

}
module "recordset" {
    source = "./modules/recordset"
    hosted_zone_id = module.zone.zone_id
    record_name = "web-elb"
    load_balancer_dns_name = module.alb.aws_alb_dns_name
    load_balance_zone_id = module.alb.aws_alb_zone_id
  
}
