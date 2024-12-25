resource "proxmox_lxc" "dns" {
  target_node = "proxmox"
  hostname    = "lxc-dnsmasq"
  ostemplate = var.lxc_template_name
  unprivileged = true

  ssh_public_keys = var.ssh_keys
  rootfs {
    storage = "local-lvm"
    size = "2G"
  }

  memory = 512
  swap = 512
  cores = 1

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
}