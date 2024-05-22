# 1. command line preference
# 2. tf.vars
# 3. environment value  Export TF_VAR_instance_type=t3.medium
# 4. default value

# instance variables
variable "image_id" {
    default = "ami-090252cbe067a9e58"
    type = string  
}

variable "instance_type" {
    default = "t2.micro"  
}

# sg varibles
variable "common_tags" {
    default = {
        project = "Expense"
        Env = "Dev"        
    } 
}

variable "sg_name" {

    default = "allow_ssh"  
}
variable "sg_description" {
    default = "allowing port 22"
}
variable "ssh_port" {
    default = 22
 
}
variable "protocol" {
  default = "tcp"
}
variable "allowed_cidr" {
    default = ["0.0.0.0/0"]
  
}
variable "instance_name" {
    default = ["db", "backend", "frontend"]
  
}

# r53 variables
variable "zone_id" {
    default = "Z04630863BQ7PC3LTU7RJ" 
}
variable "domain_name" {
  default = "sdevops.cloud"
}