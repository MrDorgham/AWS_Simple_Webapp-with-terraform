ami-id = "ami-00874d747dde814fa"

instance-type = "t2.micro"

vpc-cider = "10.0.0.0/16"

subnets = {

  "private" = {
    cidr_block = "10.0.1.0/24"
    
    tags = {
      "Name" = "private_subnet"
    }
  }


  "public" = {
    cidr_block = "10.0.0.0/24"

    tags = {
      "Name" = "public_subnet"
    }
  }
}

security_groups = {
  "http" = {
    description = "allow http access"
    cidr_blocks = [ "0.0.0.0/0" ]
    protocol = "tcp"
    port = 80
  }


  "httpw" = {
    description = "allow http access"
    cidr_blocks = [ "0.0.0.0/0" ]
    protocol = "tcp"
    port = 443
  }
}