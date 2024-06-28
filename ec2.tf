resource "aws_instance" "Linux_server" {
  count = length(var.instance_name)
  ami           = var.ami_id
  instance_type = var.instance_name[count.index] ==  "db" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_hari.id]

  
  tags = merge(

        var.common_tags,
        {
            Name = var.instance_name[count.index]
            module =var.instance_name[count.index]
        }  
    )      
}
resource "aws_security_group" "allow_hari" {
  # ... other configuration ...

    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    
    }
}