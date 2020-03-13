resource "aws_nat_gateway" "nat_gateway" {
  vpc                       = var.vpc
  instance                  = var.instance
  network_interface         = var.network_interface
  associate_with_private_ip = var.associate_with_private_ip
  public_ipv4_pool          = var.public_ipv4_pool
  tags                      = var.tags
}