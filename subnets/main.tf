resource "aws_subnet" "main" {
  for.each = var.subnets
  vpc_id     = var.vpc_id
  cidr_block = each.value["cidr"]
  availability_zone = each.value["az"]
  tags = {
    Name = each.key
  }
}

resource "aws_route_table" "main" {
for.each = var.subnets
vpc_id = var.vpc_id

tags = {
Name = each.key
}
}