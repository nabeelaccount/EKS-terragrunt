resource "aws_subnet" "private_us_east_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = "${var.region}a"

  tags = {
    "Name"                            = "${var.env}-private-${var.region}a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.env}-${var.eks_cluster}"  = "owned"
  }
}

resource "aws_subnet" "private_us_east_1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.32.0/19"
  availability_zone = "${var.region}b"

  tags = {
    "Name"                            = "${var.env}-private-${var.region}b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/${var.env}-${var.eks_cluster}"  = "owned"
  }
}

resource "aws_subnet" "public_us_east_1a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.64.0/19"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    "Name"                           = "${var.env}-public-${var.region}a"
    "kubernetes.io/role/elb"         = "1"
    "kubernetes.io/cluster/${var.env}-${var.eks_cluster}" = "owned"
  }
}

resource "aws_subnet" "public_us_east_1b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.96.0/19"
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = {
    "Name"                           = "${var.env}-public-${var.region}b"
    "kubernetes.io/role/elb"         = "1"
    "kubernetes.io/cluster/${var.env}-${var.eks_cluster}" = "owned"
  }
}
