# resource "aws_instance" "public_server" {
#   ami                         = var.ami-id
#   instance_type               = var.instance-type
#   subnet_id                   = aws_subnet.public-subnet.id
#   vpc_security_group_ids      = [aws_security_group.openPublic.id]
#   security_groups             = [aws_security_group.openPublic.id]
#   associate_public_ip_address = "true"
#   key_name                    = "Terraform_test"


#   user_data = <<EOF
# #!/bin/bash
# sudo apt update
# sudo apt install apache2 -y 
# sudo systemctl enable apache2
# sudo systemctl start apache2
# EOF

#   depends_on = [aws_security_group.openPublic]

# }



# resource "aws_instance" "private_server" {
#   ami                    = var.ami-id
#   instance_type          = var.instance-type
#   subnet_id              = aws_subnet.private-subnet.id
#   vpc_security_group_ids = [aws_security_group.Private.id]
#   security_groups        = [aws_security_group.Private.id]
#   key_name               = "Terraform_test"


#   user_data = <<EOF
# #!/bin/bash
# sudo apt update
# sudo apt install apache2 -y 
# sudo systemctl enable apache2
# sudo systemctl start apache2
# EOF

#   depends_on = [aws_security_group.openPublic]

# }

