variable "ssh_keys" {
  description = "The SSH keys to use for the Proxmox VM"
}

variable "api_url" {
  description = "The URL of the Proxmox API"
}

variable "proxmox_host" {
  description = "The Proxmox host to connect to"
  default     = "proxmox"
}

variable "vm_template_name" {
  description = "The name of the cloud init template to clone"
  default     = "local:iso/noble-server-cloudimg-amd64.img"
}

variable "lxc_template_name" {
  description = "The name of the LXC template to clone"
  default     = "local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
}

variable "token_id" {
  default = "terraform@pam!tf_token"
}

variable "token_secret" {
  sensitive = true
}

variable "dns_ip" {
  description = "The static IP address of the DNS server"
}