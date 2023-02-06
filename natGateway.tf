
# resource "aws_eip" "main-eip" {
#   network_border_group = "us-east-1"

# }


# resource "aws_nat_gateway" "nat" {


#   subnet_id     = aws_subnet.public-subnet.id
#   allocation_id = aws_eip.main-eip.id


#   tags = {
#     Name = "webapp-nat"
#   }

#   depends_on = [aws_subnet.public-subnet, aws_internet_gateway.main-igw]

# }