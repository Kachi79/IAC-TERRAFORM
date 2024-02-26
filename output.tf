output "jenkins_url" {
  value = join("", ["http://", aws_instance.new_instance.public_dns, ":", "8080"])
}