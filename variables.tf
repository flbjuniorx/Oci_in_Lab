variable "compartment_id" {
  description = "OCI_in_Lab"
  type        = string
  default     = "ocid1.compartment.oc1..aaaaaaaapekqo57mjqosmczdeqfbzxco5lymcs4juobd2wowdhhdn3os2hfq"
}

# VCN Variables

variable "vcn_cidr_block" {
  description = "CIDR block address"
  type = string
  default = "10.0.0.0/16"
}

variable "vcn_cidr_blocks" {
   description = "CIDR blocks"
   type = list(string)
   default = ["10.0.0.0/16", "172.16.0.0/20"]
}

variable "vcn_display_name" {
  description = "VCN Display name"
  type = string
  default = "vcn_inlab"
}
/*
variable "vcn_dns_label" {
  description = "VCN DNS Label"
  type =
  default =
}

variavle "vcn_is_ipv6enabled" {
  description = ""
  type = boolean
  default = 
}
*/

# SUBNET VARIABLES

variable "subnet_cidr_block" {
  description = "Subnet CIDR address block"
  type = string
  default = "10.0.1.0/24"
}

variable "subnet_display_name" {
  description = "Subnet display name"
  type = string
  default = "public-subnet"
}

# INTERNET GATEWAY
variable internet_gateway_display_name {
   type = string
   default = "internet-gateway"
}
