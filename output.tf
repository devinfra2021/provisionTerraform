output "fqdn-ec2"{

	value=aws_instance.myec2.public_dns
}

output "publicIP" {
	value=aws_instance.myec2.public_ip
}


output "privateIP" {
        value=aws_instance.myec2.private_ip
}

output "aZone" {
	value=aws_instance.myec2.subnet_id

}
