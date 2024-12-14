resource "aws_instance" "Insta1" {
    ami = "ami-0614680123427b75e"
    instance_type = var.instance_type
    key_name = "clientkey"
    subnet_id = "subnet-022a82bf37d3f4de9"
    associate_public_ip_address = true
}

