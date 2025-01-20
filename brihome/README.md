# Don't forget

## Fresh run (new server)

### User creations

1. Create `ansible` user
2. Add SSH key to 
for a first run on fresh server, need to use a different inventory (since no dns yet): `ansible-playbook --ask-become-pass -i inventory-fresh playbook.yml`
