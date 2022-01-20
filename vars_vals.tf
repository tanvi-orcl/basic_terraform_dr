# OCI (existing)
variable compartment_ocid { default = "ocid1.compartment.oc1..aaaaaaaab3yw6vwv6zafelbx6zvhuszn5iaoesrwxkh6d645arl266w4aofq" }
variable standby_region { default = "eu-frankfurt-1" }
variable primary_region { default = "us-sanjose-1" }

# AUTHENTICATION (existing)
variable api_fingerprint { default = "3f:c2:66:ad:6b:95:9e:d4:2a:3b:a6:97:89:6d:bb:6e" }
variable api_private_key_path { default =  "/Users/tvaradha/.ssh/terraform_api_key.pem" }
variable tenancy_id { default =  "ocid1.tenancy.oc1..aaaaaaaaplkmid2untpzjcxrmbv4nowe74yb4lr6idtckwo4wyf7jh23be4q" }
variable user_id { default =  "ocid1.user.oc1..aaaaaaaa5in22b5bvkncp373g2mkhi6vh2cspj4vt2j5sx27576pql75umda" }

# --------------------------------------------------------------------

# STANDBY REGION NETWORKING
variable vcn_display_name { default = "StandbyVCN" }
variable vcn_cidr { default = "10.1.0.0/16" }
variable vcn_dns { default = "standbydr1" }

variable subnet_cidr { default = "10.1.0.0/24" }
variable subnet_display_name { default = "SubnetA" }
variable subnet_dns { default = "standbysubnet1" }

variable internet_gateway_display_name { default = "StandbyInternetGW" }
variable standby_drg_display_name { default = "StandbyRegionDRG"}
variable standby_rpc_display_name { default = "StandbyRegionRPC"}

# DB Specific Networking
variable db_security_list_display_name { default = "DB Security List" }

# LB Specific Networking
variable lb_subnet_cidr { default = "10.1.1.0/24" }
variable lb_subnet_display_name { default = "lbSubnet1" }
variable lb_security_list_display_name { default = "LB Security List" }
variable lb_subnet_dns { default = "lbSubnet1" }

# STANDBY REGION DB
variable standby_db_display_name { default = "StandbyDB1"}
variable standby_db_hostname { default = "standbydb1"}
variable delete_standby_db_home_on_delete { default = "true"}

# STANDBY REGION LOAD BALANCER
variable load_balancer_display_name { default = "dr-lb-tf" }

# STANDBY REGION COMPUTE
variable compute_shape { default = "VM.Standard2.2" }
variable compute_ssh_pub_key { default = "~/.ssh/idrsa.pub" }
variable compute_ssh_private_key { default = "~/.ssh/idrsa.key" }
variable compute_display_name { default = "terraform11" }
variable compute_hostname { default = "terraform1" }
variable compute_vnic_display_name { default = "terraform1" }

variable compute_image_id { default = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaxv7ekktzkq6kyvsz32ofi3jrvdru7nan7vj3fbwfgairtbvihhkq" }

variable boot_volume_backup_display_name { default ="initialBackup" }
variable restored_boot_volume_display_name { default = "appBootVol" }


# STANDBY REGION BLOCK VOLUMES
variable block_backup_policy_display_name { default = "block_backup_policy" }
variable block_tag { default = "freeform_tags.environment" }    # To use a defined tag, replace freeform_tags with defined_tags.
variable block_tag_value { default = "dev1" }
variable block_volume_group_display_name { default = "block_volume_group" }

# --------------------------------------------------------------------

# PRIMARY REGION VCN (existing)
variable primary_vcn_cidr { default = "10.0.0.0/16" }
variable primary_vcn_ocid { default = "ocid1.vcn.oc1.us-sanjose-1.amaaaaaantxkdlyaze57vxthzjolubkdcu2tslaukdtp3z5emqmsk57dsi7a"}
variable primary_drg_ocid { default = "ocid1.drg.oc1.us-sanjose-1.aaaaaaaazehirlxbl7b35n5rcunsn5f2qitt7pu4uqhhpsx4nss4cwawp47q"}

variable bronze_backup_policy { default = "ocid1.volumebackuppolicy.oc1..aaaaaaaadrzfwjb5tflixtmy5axp2kx65uqakgnupfogabzjhtn5x5dfra6q"}
variable primary_boot_volume_ocid { default = "ocid1.bootvolume.oc1.us-sanjose-1.abzwuljrzlmgpxzywn527gf5fz3u5cwdpsounvm46zkcszc3onwo7rbyo65a" }

# PRIMARY REGION DB (existing)
variable primary_db_ocid { default = "ocid1.database.oc1.us-sanjose-1.abzwuljrav2vhaojroymkhbgxfe6nywlmw2dg3wiwa7i2rnzkx55ucswijcq"}
variable primary_db_admin_password { default = "WelcomeDB123##"}
variable primary_db_vm_shape { default = "VM.Standard2.4"}

# PRIMARY REGION RPC
variable primary_drg_display_name { default = "PrimaryRegionDRG"}
variable primary_rpc_display_name { default = "PrimaryRegionRPC"}