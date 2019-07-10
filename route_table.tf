





# dev_public
resource "aws_route_table" "dev_public" {
  vpc_id = "${aws_vpc.dev.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.dev.id}"
  }

  tags = {
    Name = "user08-dev-public"
  }
}

resource "aws_route_table_association" "dev_subnet-a" {
  subnet_id      = "${aws_subnet.subnet-a.id}"
  route_table_id = "${aws_route_table.dev_public.id}"
}

resource "aws_route_table_association" "dev_subnet-b" {
  subnet_id      = "${aws_subnet.subnet-b.id}"
  route_table_id = "${aws_route_table.dev_public.id}"
}


