variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
  
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}

variable "sg_id" {

    default = "allow_ssh" 
  
}

variable "tags" {

    default = {
        project = "Expense"
        environment= "DEV"
        Name= "db"
        Module = "db"
    }
  
}

variable "ssh_port" {
    default = 22
  
}
variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
  
}
variable "protocol" {
    default = "tcp"
  
}

variable "sg_tags" {
    default = {
        Name = "Allow ssh"
        createdBy = "Siva"

    }
  }




