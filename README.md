# hosted
repo for self-hosted stuff

# Don't forget

## Fresh run (new server)

for a first run on fresh server, need to use a different inventory (since no dns yet): `ansible-playbook --ask-become-pass -i inventory-fresh playbook.yml`

Then, map the machine name to `fedora-server-primary` in tailscale