provider "aws" {
 region = "us-west-1"
}

resource "aws_instance" "vm"{
	ami = "dummy-ID"
	subnet_id = "dummy_-D"
	instance_type = "t3.micro"
	tags = {
			name = "my-instance"
	}
}