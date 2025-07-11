resource "aws_instance" "this" {
    ami = data.aws_ami.joindevops.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    instance_type = "t3.micro"
    user_data = file("docker.sh")
    tags = {
        Name = "docker-demo"
    }
    
    
}

 resource "aws_security_group" "allow_tls"{
    name = "allow_tls"
    description = "to allow all traffic"

    ingress{
        to_port = 22
        from_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress{
        to_port = 80
        from_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
     egress {
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
     }

     tags = {
        Name = "allow_tls"
     }
 }

 output "public-ip" {
    value = aws_instance.this.public_ip
 }