variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "vpc" {
  description = "Boolean if the EIP is in a VPC or not"
  type        = bool
  default     = true
}

variable "instance" {
  description = "EC2 instance ID"
  default     = null
}

variable "network_interface" {
  description = "Network interface ID to associate with"
  default     = null
}

variable "associate_with_private_ip" {
  description = "A user specified primary or secondary private IP address to associate with the Elastic IP address"
  default     = null
}

variable "public_ipv4_pool" {
  description = "EC2 IPv4 address pool identifier or amazon"
  default     = "amazon"
}
