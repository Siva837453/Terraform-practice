resource "aws_instance" "Expense" {
    
    ami = var.ami_id
    instance_type = var.instance_name == "db" ? "t2.micro" : "t2.small"
  
    tags = {
        
       Name= var.instance_name
}
}

