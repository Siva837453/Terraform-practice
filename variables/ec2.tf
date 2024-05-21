resource "aws_instance" "instance" {

    ami= var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]

    
    tags = var.tags
  
}


resource "aws_security_group" "allow_ssh" {
  
    name="Allow ssh"
    description = "allow ssh access"

    ingress{

        from_port = var.ssh_port
        to_port =  var.ssh_port
        protocol= var.protocol
        cidr_blocks =  var.cidr_blocks  
        
        }

        egress{

        from_port = 0
        to_port =  0
        protocol= var.protocol
        cidr_blocks = var.cidr_blocks   
        
        }

        tags = var.sg_tags
}