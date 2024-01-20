module "VPC"{
    source = "./VPC"
    vpc_cidr_block = var.vpc_cidr_block
    Public_subnete_cidr_block = var.Public_subnete_cidr_block
    number_of_public_subnets = var.number_of_public_subnets
    availability_zones = var.availability_zones
    Private_subnete_cidr_block = var.Private_subnete_cidr_block
    number_of_private_subnets = var.number_of_private_subnets
}
module "EKS" {
    source = "./EKS"
    name = var.name
    vpc_id = module.VPC.vpc_id
    Private_subnet_ids = module.VPC.Private_subnet_ids
}