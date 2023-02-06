# resource "aws_route_table" "igw-route-table" {
#   vpc_id = aws_vpc.main-vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.main-igw.id
#   }

#   tags = {
#     Name = "webapp-igw"
#   }

# }

# resource "aws_route_table" "nat-route-table" {
#   vpc_id = aws_vpc.main-vpc.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.nat.id
#   }

#   tags = {
#     Name = "webapp-igw"
#   }

# }




# resource "aws_route_table_association" "Public-routeToSubnet-connection" {
#   subnet_id      = aws_subnet.public-subnet.id
#   route_table_id = aws_route_table.igw-route-table.id
# }

# resource "aws_route_table_association" "Private-routeToSubnet-connection" {
#   subnet_id      = aws_subnet.private-subnet.id
#   route_table_id = aws_route_table.nat-route-table.id
# }