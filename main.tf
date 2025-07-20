# resource "aws_instance" "public_instance" {
#   count         = 2 # Create two instances
#   ami           = "ami-0f58b397bc5c1f2e8"
#   instance_type = "t2.micro"
# #   key_name      = aws_key_pair.deployer.key_name

# #   tags = {
# #     Name = "public_instance-${count.index}"
# #   }
# }


resource "aws_instance" "public_instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
}
