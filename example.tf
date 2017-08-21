provider "aws" {
	access_key = "AKIAI5L7IAJELZR6DJQA"
	secret_key = "4WGWGhsyDZDMEOVHX5HYlpCs9dNE+n5admq4XahE"
	region = "us-east-1"
}

resource "aws_instance" "example_inst" {
	ami = "ami-b374d5a5"
#	ami = "ami-e537069e"
	instance_type = "t2.micro"
	subnet_id = "subnet-335ef77b"
	key_name = "jskim-test"
	tags {
		Name = "New Instance #1"
	}
}

resource "aws_instance" "example_inst222" {
	ami = "ami-b374d5a5"
#	ami = "ami-e537069e"
	instance_type = "t2.micro"
	subnet_id = "subnet-335ef77b"
	key_name = "jskim-test"
}

