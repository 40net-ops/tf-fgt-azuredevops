############################################################################################################################################
#Required variables for Standalone FortiGate VM deployment #
############################################################################################################################################

# Added name to each deployed resource
#prefix = ""

# Azure region
#location = ""

# Username for FortiGate admin
#username = ""

# Password for FortiGate admin
#password = ""

# Azure subscription ID
#subscription_id = ""

# Azure Marketplace image SKU: PAYG ('fortinet_fg-vm_payg_2023') or BYOL ('fortinet_fg-vm')
fgt_image_sku = "fortinet_fg-vm"

# FortiGate version, defaults to latest available in Azure Marketplace
fgt_version = "7.4.8"


# Azure VM size for FortiGate instances
fgt_vmsize = "Standard_D4s_v5"

# Size in GB for FortiGate data disks
fgt_datadisk_size = 64

# Number of data disks to attach to each FortiGate
fgt_datadisk_count = 1

# Add Path for BYOL license file for FGT (optional)
fgt_byol_license_file = ""

# Add fortiflex token for FGT (optional)
fgt_byol_fortiflex_license_token = ""

# Path to the SSH public key file for FortiGate instances (optional)
fgt_ssh_public_key_file = ""

# IP address of the FortiManager (optional)
fgt_fortimanager_ip = ""

# Serial number of the FortiManager (optional)
fgt_fortimanager_serial = ""

