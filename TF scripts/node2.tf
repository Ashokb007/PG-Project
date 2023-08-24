resource "aws_instance" "Emp" {

  ami                    = "ami-0f5ee92e2d63afc18"   
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web-sg.id]

  tags = {
    Name = "Node-2"
    Team = "Employee"
  }

  key_name = "Skey"

}
