provider "aws" {
	access_key = "${var.MY_ACCESS_KEY}"
	secret_key = "${var.MY_SECRET_KEY}"
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

