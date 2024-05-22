locals {
    ami_id = "ami-090252cbe067a9e58"
    instance_type=var.instance_name == "db" ? "t2.micro" : "t2.small"
    sg_id = "sg-0fdf18ffe954458d7"

    tags = {
        Name = "db"
    }
}