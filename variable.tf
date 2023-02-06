variable "ami-id" {
    type = string
}

variable "instance-type" {
    type = string
}

variable "vpc-cider" {
    type = string
}




variable "subnets" {
  
    type = map (object({
       
        cidr_block = string
        tags = map (string)

    }))
}

variable "security_groups" {

    type = map(object({
        description = string
        port = number
        protocol = string
        cidr_blocks = list(string)   

    }))

  
}

