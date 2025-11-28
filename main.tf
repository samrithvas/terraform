provider "aws"{
    region= "us-east-1"
    alias="us-east-1"
}
provider "aws"{
    region="us-east-2"
    alias="us-east-2"
}
resource "aws_instance" "ec2-instance"{
    ami="ami-0fa3fe0fa7920f68e"
    provider="aws.us-east-1"
    subnet_id="subnet-06e5f4d940de8e2b1"
    instance_type="t2.micro"
    tags={
        Name="instance1"
    }
}
resource "aws_instance" "ec2-instance2"{
    ami="ami-0f5fcdfbd140e4ab7"
    provider="aws.us-east-2"
    subnet_id="subnet-02d549ea567348fe0"
    instance_type="t2.micro"
    tags={
        Name="instance1"
    }
}