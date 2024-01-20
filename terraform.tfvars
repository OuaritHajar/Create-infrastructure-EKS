#vpc
vpc_cidr_block = "10.0.0.0/16"
Private_subnete_cidr_block = ["10.0.0.0/24","10.0.2.0/24"]
Public_subnete_cidr_block = ["10.0.3.0/24","10.0.4.0/24"]
number_of_public_subnets = "2"
number_of_private_subnets = "2"
availability_zones= ["us-east-1a", "us-east-1b"]
#EKS
name = "eks"