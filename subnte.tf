




resource "aws_subnet" "subnet-a" {
  vpc_id            = "${aws_vpc.dev.id}"
  availability_zone = "ap-northeast-1a"
  cidr_block        = "108.0.1.0/24"

  tags = {
    Name = "user08-subnet-a"
  }
}



resource "aws_subnet" "subnet-c" {
  vpc_id            = "${aws_vpc.dev.id}"
  availability_zone = "ap-northeast-1b"
  cidr_block        = "108.0.2.0/24"

  tags = {
    Name = "user08-subnet-b"
  }
}
