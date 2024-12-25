# Terraform for Homelab

Since I'm using proxmox, you need to set up a terraform user + secret. The instructions can be found on the [tf provider page](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs).

# Pre-reqs

## terraform

Using LOS for state -> see `bricloud/terraform/README.md`

## proxmox

* Proxmox setup (manual)
* [Proxmox helper scripts](https://community-scripts.github.io/ProxmoxVE/)
  * Post install
  * ubuntu VM + LXC
  * HAOS
* https://lkummer.github.io/homelab-wiki/how-to/proxmox-api-tokens/
  * Create permissions for **both user AND token** not just token
* Template names can be found with `pvesm list local`


# What are we making?

* `[2024-12-1]`:  
  * `LXC`: DNS
  * `LXC`: reverse proxy #TODO
  * `VM`: docker host #TODO