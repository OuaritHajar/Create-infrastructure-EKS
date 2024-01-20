variable "name" {
  type        = string
  description = "The name of the cluster"
}
variable "vpc_id" {
  type = string 
  description = "The id for the VPC where the ECS container instance should be deployed"
}
variable "Private_subnet_ids" {
  type = list(string) 
  description = "the private_subnet_ids "
}