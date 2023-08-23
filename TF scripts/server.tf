resource "aws_instance" "controller" {

  ami                    = "ami-0f5ee92e2d63afc18" 
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web-sg.id]

  tags = {
    Name = var.instance_name
    Team = var.instance_team
  }

  user_data = file("user-data.sh")
  key_name  = "Skey"

}
