# TODO: add vault file and scp it around

# FAQ

To use the included tailscale role on an LXC, you must first add this to the proxmxo host: https://tailscale.com/kb/1130/lxc-unprivileged

# TODO

* Docker host:
* add guest agent
* apt-get update && apt-get -y upgrade
  apt-get install -y qemu-guest-agent
    systemctl enable qemu-guest-agent