PROJECT_NAME := "ubuntu"

.PHONY: help ## print this
help:
	@echo ""
	@echo "$(PROJECT_NAME) Development CLI"
	@echo ""
	@echo "Usage:"
	@echo "  make <command>"
	@echo ""
	@echo "Commands:"
	@grep '^.PHONY: ' Makefile | sed 's/.PHONY: //' | awk '{split($$0,a," ## "); printf "  \033[34m%0-10s\033[0m %s\n", a[1], a[2]}'

.PHONY: install ## install requirements
install:
	@ansible-galaxy install -r requirements.yml
	
.PHONY: vault-edit ## edit secret vars
vault-edit: 
	@ansible-vault edit vars/vault.yml --vault-password-file .vault_pass

.PHONY: deploy ## run the webserver playbook
deploy: 
	@ansible-playbook deployments.yml --vault-password-file .vault_pass -i inventory-ts

.PHONY: ping ## Ping the hosts
ping: 
	@ansible -i inventory-ts webserver -m ping

.PHONY: provision ## Provision the hosts
provision: 
	@ansible-playbook webserver.yml --vault-password-file .vault_pass -i inventory-ts

.PHONY: updates ## Check for updates
updates: 
	@ansible-playbook updates.yml --vault-password-file .vault_pass -i inventory-ts
