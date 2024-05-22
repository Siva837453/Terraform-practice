output "aws_id" {
    value = data.aws_ami.ami_id.id
    #value = data.aws_ami.ami_id.root_snapshot_id ## you can add the field here and you can get the required result this the example
  
}

output "vpc_id" {

    value =  data.aws_vpc.default
  
}