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

.PHONY: deploy ## run the webserver playbook
deploy: 
	@ansible-playbook playbook.yml --ask-vault-pass -i inventory

.PHONY: ping ## Ping the hosts
ping: 
	@ansible -i inventory playbook.yml -m ping

.PHONY: bootstrap ## Provision the hosts
bootstrap:
	@ansible-playbook bootstrap.yml -i inventory --vault-password-file .bootstrap_vault_pass
