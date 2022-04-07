terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "4.69.0"
    }
  }
}

provider "oci" {
  # Configuration options
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaby7vfbgaioxr4gufxhgukhl5dlerufh256l2siyabfknn4l2npha"
  user_ocid = "ocid1.user.oc1..aaaaaaaaee7z4xmqyxvf2rxvyslurrn426hnwyebj5jol5uums6geflb63ja" 
  private_key_path = "~/.oci/ociinlab.pem"
  fingerprint = "e9:26:7b:11:da:28:f5:72:77:0a:54:d2:0d:89:04:b8"
  region = "sa-saopa0ulo-1"
}
