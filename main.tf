resource "aws_subnet" "subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet.block
    map_public_ip_on_launch = var.subnet.public
    availability_zone = var.subnet.zone
    tags = {
        Name = var.subnet.name
    }
}
