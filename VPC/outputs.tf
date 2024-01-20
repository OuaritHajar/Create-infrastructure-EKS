output vpc_arn {
  value = aws_vpc.VPC.arn
}

output vpc_id {
  value       = aws_vpc.VPC.id
}

output Private_subnet_ids{
    value = aws_subnet.Private_Subnet.*.id
}

output Public_subnet_ids{
    value = aws_subnet.Public_Subnet.*.id
}