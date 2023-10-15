provider "aws" {
region = "ap-south-1"
access_key = "ABCD aws IAM role access key"
secret_key = "aws IAM sceret key"  
}

resource "aws_instance" "DemoInstaceForTerraform" {
  ami = "amiImageid"
  count = 1
  instace_type = "t2.micro"
  key_name = "AwsKP"
  security_groups = ["Default"]
  tags = {
    Name = "AwsDemoInstance"
  }
}

# terraform init
# terraform fmt
# terraform validate
# terraform plan
# terraform apply
# terraform destroy
