resource "oci_core_instance" "test_instance" {
    #Required
    availability_domain = var.instance_availability_domain
    compartment_id = var.compartment_id
    shape = var.instance_shape
	display_name = "Server 1"
	
	source_details {
		source_id = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaachm4pxwumwljc3lu7x46jjlmv5lbuwtpjidpb64uhlp4tldfvi7q"
		source_type = "image"
	}
	
	create_vnic_details {
		subnet_id = oci_core_subnet.test_subnet.id 
	}
}
