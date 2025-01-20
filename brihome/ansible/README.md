# BriHome automation

## DNS + Reverse Proxy

* Dns managed via router
* Reverse proxy is a Caddy systemd service running on a VM
* Manually doing ACME challenge with [acme.sh](https://github.com/acmesh-official/acme.sh)
* Caddy points subdomains on brihome.me to the appropriate services on the local network

## Docker Host

* Use one VM for a "Docker host" under the docker role
* Docker containers are managed via compose files in the docker role/templates

## FAQ

* https://github.com/tteck/Proxmox/discussions/2072
* Docker host:
  * add guest agent:
  * ```bash
    apt update && apt -y upgrade
    apt install -y qemu-guest-agent
    systemctl enable qemu-guest-agent
    ```