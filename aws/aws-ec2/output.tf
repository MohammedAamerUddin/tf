# output "aws_instance_public_ip" {
#   value = aws_instance.instance.public_ip
# }

# output "aws_instance_private_ip" {
#   value = aws_instance.instance.private_ip
# }

output "aws_instances_public_and_private_ip" {
  value = {
    public_ip  = aws_instance.instance.public_ip
    private_ip = aws_instance.instance.private_ip
  }
}