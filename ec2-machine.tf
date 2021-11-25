/*terraform {
	required_providers{

	aws ={
	source="hashicorp/aws"
	}
	}


}

provider "aws" {
region="ap-south-1"
}
*/

resource "aws_instance" "myec2" {

	ami=var.ami-id
	instance_type=var.compute-type
	security_groups=[aws_security_group.web-ec2-security-group.name]
	tags ={
	Name =var.tag-name
	}
}
