#################1####################

resource "aws_instance_type" "myinstance" {
    ami = ""
    instance_type = "t2.micro"
    key_name = "clientkey"
    count = 2
}

######################2###################

variable "ami" {
    type = string
    default = ""
}

variable "instance_type" {
    type = string
    default = ""
}

variable "boxes" {
    type = list(string)
    default = ["sandbox1" , "sandbox2"]
}

resource "aws_instance" "name" {
    ami = ""
    instance_type = "t2.micro"
    key_name = "clientkey"
    count = length(var.boxes)

    tags = {
        Name = var.boxes[count.index] 
    }
}

#####################3#####################

variable "user_names" {
    type = list(string)
    default = ["user1" , "user2" , "user3"]
}

resource "aws_ami_user" "example" {
    count = length(var.user_names)
    Name = var.user_name[count.index]
}

















