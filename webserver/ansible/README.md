# Don't forget

## Fresh run (new server)

for a first run on fresh server, need to use a different inventory (since no dns yet): `ansible-playbook --ask-become-pass -i inventory-fresh playbook.yml`

* https://github.com/tteck/Proxmox/discussions/2072

# What is it?

Among other things, this playbook manages:

* docker
* Tailscale
* [dockge](https://github.com/louislam/dockge)
  * 5001