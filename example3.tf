resource "aws_instance" "example4" {
  ami           = "${lookup(var.amis, var.ostype)}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  security_groups       = ["test01default"]
  provisioner "remote-exec" {
    inline = [
      "sudo chkconfig httpd on",
      "sudo service httpd start"
    ]
    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = "${file(var.key_file_path)}"
      timeout = "1m"
    }
  }
}

output "example4" {
  value = "${aws_instance.example4.public_ip}"
}
