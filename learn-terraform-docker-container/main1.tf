provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

# # resource "<provider>_<resource_type>" "name" {
#     config options.. 
#     key = "value"
#     key2 ="another value"
    
# }

resource "aws_instance" "my-first-server" {
    ami = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"

    # tags = {
    #   Name = "Hello"
    # }
    
}

