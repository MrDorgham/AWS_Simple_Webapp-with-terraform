resource "aws_subnet" "main_subnets" {
  for_each   = var.subnets
  cidr_block = each.value["cidr_block"]
  vpc_id     = aws_vpc.main-vpc.id
  tags       = each.value["tags"]


}