variable "image_id" {
    default = "ami-090252cbe067a9e58"
    type = string  
}


variable "zone_id" {
    default = "Z04630863BQ7PC3LTU7RJ" 
}
variable "domain_name" {
  default = "sdevops.cloud"
}

variable "instance_name" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"

    } 
}

variable "common_tags" {
    type = map 
    default = {

        project="Expense"
        terraform = true
    }
  
}