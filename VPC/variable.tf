variable vpc_cidr_block {
  type        = string
  description = "CIDR block for vpc"
}

variable Public_subnete_cidr_block {
  type        = list(string)
  description = "CIDR block for public subnets"
}
variable number_of_public_subnets{
  type = number 
  description = "The number of public subnets"
}

variable availability_zones{
  type = list(string) 
}

variable Private_subnete_cidr_block {
  type        = list(string)
  description = "CIDR block for private subnets"
}

variable number_of_private_subnets{
  type = number 
  description = "The number of private subnets"
}