resource "aws_instance" "example1" {
  ami		= "${lookup(var.amis, var.ostype)}"
  instance_type = "${var.instance_type}"
  key_name 	= "${var.key_name}"
  security_groups	= ["test01default"]
  provisioner "local-exec" {
    command = "echo ${aws_instance.example1.public_ip} >> hosts" }
}

output "example1" {
  value = "${aws_instance.example1.public_ip}"
}
