variable "ami-id" {
	type=string
	description="The id of the machine image (AMI) to use for the server."
	validation{
		condition =length(var.ami-id)>4 && substr(var.ami-id,0,4)=="ami-"
		error_message="The image_id value must be a valid AMI id, starting with \"ami-\"."  	

	}
}

variable "compute-type" {
	type =string
	description="This is define the type of ec2 machine which is going to create after terraform apply command"
	validation{
		condition=can(regex("^[a-z][a-z][0-9].% || ^[a-z][0-9][a-z].%",var.compute-type))
		error_message="The type of ec2 machine name is not valid."
	}
}

variable "tag-name" {
	type=string
	description="this is provide a tag name to ec2-instance"
}
