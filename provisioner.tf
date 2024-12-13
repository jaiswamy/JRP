resource "aws_instance" "aws" {
    ami = "ami-0614680123427b75e"
    instance_type = "t3.micro"
    key_name= "clientkey"
    subnet_id = "subnet-022a82bf37d3f4de9"
    associate_public_ip_address = true
    
    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("~/.ssh/id_rsa")
      host = self.public_ip
    }
    provisioner "local-exec" {
        command = "touch file-1"     
    } 
}