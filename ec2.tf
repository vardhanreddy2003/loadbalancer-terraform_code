resource "aws_instance" "webserver1" {
    ami="ami-053a45fff0a704a47"
    instance_type =var.instance_type
    key_name =var.key
    subnet_id = aws_subnet.private-subnet-1.id
    vpc_security_group_ids = [aws_security_group.web_sg.id]
    tags={
        Name="privateserver-1"
    }
  
}
resource "aws_instance" "webserver2" {
    ami="ami-053a45fff0a704a47"
    instance_type =var.instance_type
    key_name =var.key
    subnet_id =aws_subnet.private-subnet-2.id
    vpc_security_group_ids = [aws_security_group.web_sg.id]
    tags={
        Name="privateserver-2"
    }
  
}

resource "aws_instance" "public-server"{
    ami="ami-053a45fff0a704a47"
    instance_type=var.instance_type
    key_name=var.key
    subnet_id=aws_subnet.public-subnet-1.id
   
   
    vpc_security_group_ids = [aws_security_group.web_sg.id]
    tags={
        Name="public-server"
    }

}