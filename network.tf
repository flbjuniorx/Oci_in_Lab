resource "oci_core_vcn" "test_vcn" {
    #Required 
    compartment_id = var.compartment_id

    #Optional
    display_name = var.vcn_display_name
    cidr_blocks = var.vcn_cidr_blocks
/*
    cidr_block = var.vcn_cidr_block
    defined_tags = {"Operations.CostCenter"= "42"}
    dns_label = var.vcn_dns_label
    freeform_tags = {"Department"= "Finance"}
    is_ipv6enabled = var.vcn_is_ipv6enabled
*/
}

resource "oci_core_subnet" "test_subnet" {
    #Required
    cidr_block = var.subnet_cidr_block
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id
    
    #Optional
    display_name = var.subnet_display_name
}

resource "oci_core_internet_gateway" "test_internet_gateway" {
    #Required
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id

    #Optional
    display_name = var.internet_gateway_display_name
/*
    enabled = var.internet_gateway_enabled
    defined_tags = {"Operations.CostCenter"= "42"}
    enabled = var.internet_gateway_enabled
    freeform_tags = {"Department"= "Finance"}
*/
}
