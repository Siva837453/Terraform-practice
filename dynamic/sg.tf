resource "aws_security_group" "allow_ports" {
    name        = "allow_ports"
    description = "allowing port 22,80,8080,3306"

    dynamic "ingress" {

    for_each = var.inbound_rule
    content {
    from_port        = ingress.value["port"]
    to_port          = ingress.value["port"]
    protocol         = ingress.value["protocol"]
    cidr_blocks      = ingress.value["cidr_blocks"]

    }
    }

    
    egress {
    from_port        = 0  #from 0 to 0 means opening all ports
    to_port          = 0
    protocol         = "-1" #allow everything
    cidr_blocks      = ["0.0.0.0/0"]
   
    }


    tags ={ 
        name = "allow_ports"
        createdBy = "siva"
    }
}
