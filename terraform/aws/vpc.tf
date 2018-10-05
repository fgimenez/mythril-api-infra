#
# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

resource "aws_vpc" "mythril-api" {
  cidr_block = "10.0.0.0/16"

  tags = "${
    map(
     "Name", "terraform-eks-mythril-api-node",
     "kubernetes.io/cluster/${var.cluster-name}", "shared",
    )
  }"
}

resource "aws_subnet" "mythril-api" {
  count = 2

  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  cidr_block        = "10.0.${count.index}.0/24"
  vpc_id            = "${aws_vpc.mythril-api.id}"

  tags = "${
    map(
     "Name", "terraform-eks-mythril-api-node",
     "kubernetes.io/cluster/${var.cluster-name}", "shared",
    )
  }"
}

resource "aws_internet_gateway" "mythril-api" {
  vpc_id = "${aws_vpc.mythril-api.id}"

  tags {
    Name = "terraform-eks-mythril-api"
  }
}

resource "aws_route_table" "mythril-api" {
  vpc_id = "${aws_vpc.mythril-api.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.mythril-api.id}"
  }
}

resource "aws_route_table_association" "mythril-api" {
  count = 2

  subnet_id      = "${aws_subnet.mythril-api.*.id[count.index]}"
  route_table_id = "${aws_route_table.mythril-api.id}"
}
