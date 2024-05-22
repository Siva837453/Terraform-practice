resource "aws_instance" "Instance" {

    ami = "ami-090252cbe067a9e58"
    instance_type = local.instance_type
    vpc_security_group_ids = [local.sg_id]
  

    tags = local.tags

}





