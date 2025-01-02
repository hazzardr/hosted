resource "proxmox_vm_qemu" "network" {
  name     = "brihome-networking"
  desc = "Reverse proxy and dns server"
  target_node  = "proxmox"
  clone   = var.vm_template_name
  os_type = "cloud-init"
  agent = 1

  cores  = 1
  sockets = 1
  vcpus = 0
  cpu_type = "host"

  memory = 2048
  scsihw = "lsi"

  # Disk
  disks {
    ide {
      ide3 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
    virtio {
      virtio0 {
        disk {
          size            = "16G"
          cache           = "writeback"
          storage         = "local-lvm"
          iothread        = true
        }
      }
    }
  }

  network {
    id = 0
    model = "virtio"
    # Proxmox standard bridge
    bridge = "vmbr0"
  }

  boot = "order=virtio0;net0"
  ipconfig0 = "ip=${var.network_ip}/24,gw=${var.router_ip}"
  sshkeys = var.ssh_keys
}