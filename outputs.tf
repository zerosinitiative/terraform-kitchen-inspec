output "aws_instance_id" {
  description = "The AWS EC2 Instance ID"
  value       = aws_instance.myec2.id
}

output "aws_instance_ami_id" {
  description = "The AWS EC2 Instance AMI ID"
  value       = var.ami_id
}