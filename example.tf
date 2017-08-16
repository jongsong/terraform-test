provider "aws" {
	access_key = "AKIAJA2CJDXSKDKP27VQ"
	secret_key = "MvNCTeJVMwON7UYUDOJ2EzUrGqRD7HpeLhwrMuMs"
	region = "us-east-1"
}

resource "aws_instance" "example_inst" {
	ami = "ami-b374d5a5"
#	ami = "ami-e537069e"
	instance_type = "t2.micro"
	subnet_id = "subnet-335ef77b"
	key_name = "jskim-test"

	provisioner "local-exec" {
		command = "echo ${aws_instance.example_inst.public_ip} > ip_address.txt"
	}
}

