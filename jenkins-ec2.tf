resource "aws_instance" "jenkins_server" {
  ami                         = "ami-006f82a1d5a27da54"
  instance_type               = "m7i-flex.large"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.jenkins_sg.id]
  associate_public_ip_address = true
  key_name                    = "key"

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = "jenkins-server"
  }
}
