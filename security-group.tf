resource "aws_security_group" "web-ec2-security-group" {
	name="${var.tag-name}-SG"
	ingress {
		from_port =8080
		to_port=8080
		protocol="tcp"
		cidr_blocks=["0.0.0.0/0"]
		description="this is rule for http 8080 traffic"
	}

	ingress {
		from_port=8443
		to_port=8443
		protocol="tcp"
		cidr_blocks=["0.0.0.0/0"]
		description="this is rule for https 8443 traffic"
	}
	
	ingress {
		from_port=22
		to_port=22
		protocol="tcp"
		cidr_blocks=["0.0.0.0/0"]
		description="this is rule for SSH connection into ec2 instance"
	}
}
