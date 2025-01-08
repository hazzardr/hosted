# BriHome automation

## DNS + Reverse Proxy

* Dns managed on it's own LXC to forward every request to the brihome.lan domain to the reverse proxy
* Reverse proxy is a Caddy systemd service running on the same LXC
* Caddy manages HTTPS certs automatically
* Caddy points subdomains on brihome.lan to the appropriate services on the local network

## Docker Host

* Use one VM for a "Docker host" under the docker role
* Docker containers are managed via compose files in the docker role/templates

## FAQ

* To use the included tailscale role on an LXC, you must first add this to the proxmxo host: https://tailscale.com/kb/1130/lxc-unprivileged
* Docker host:
* add guest agent
* apt-get update && apt-get -y upgrade
  apt-get install -y qemu-guest-agent
    systemctl enable qemu-guest-agent