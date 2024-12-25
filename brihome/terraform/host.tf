# resource "proxmox_vm_qemu" "brihome" {
#   count = 1
#   name = "docker-host"
#   target_node = var.proxmox_host
#   clone = var.template_name
#   agent = 1
#   os_type = "cloud-init"

#   cores = 2
#   memory = 10240
#   scsihw = "virtio-scsi-pci"
#   bootdisk = "scsi0"
#   network {
#     model = "virtio"
#     bridge = "vmbr0"
#   }
#   disk {
#     slot = 0
#     type = "scsi"
#     iothread = 1
#     storage = "local-lvm"
#     size = "400G"
#   }


#   lifecycle {
#     ignore_changes = [
#       network,
#     ]
#   }

#   sshkeys = <<EOF
#   ${var.ssh_key}
#   EOF

# }