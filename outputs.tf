output "jenkins_public_ip" {
  value = aws_instance.jenkins_server.public_ip
}

output "app_public_ip" {
  value = aws_instance.app_server.public_ip
}

output "monitoring_public_ip" {
  value = aws_instance.monitoring_server.public_ip
}
