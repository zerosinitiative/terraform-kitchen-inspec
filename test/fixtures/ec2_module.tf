module "ec2" {
    source = "../.."
    instance_type = "t2.micro"
    tags = {
        "Name" = "Akshay"
    }
}

output "aws_instance_id" {
  description = "The AWS Instance ID"
  value       = module.ec2.aws_instance_id
}

output "aws_instance_ami_id" {
  description = "The AWS Instance AMI ID"
  value       = module.ec2.aws_instance_ami_id
}