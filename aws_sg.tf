resource "aws_security_group" "test01default" {
  name		= "test01default"
  description 	= "the default linux machine"
  vpc_id	= "${var.vpc_id}"
  tags {
    Name	= "default linux" }

  ingress {
    from_port	= 22
    to_port 	= 22
    protocol	= "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description	= "ssh"
  }
}

