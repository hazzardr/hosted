PROJECT_NAME := "gameserver"
PLAYBOOK_NAME := "factorio-server.yml"

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

.PHONY: deploy ## run the webserver playbook
deploy: 
	@ansible-playbook $(PLAYBOOK_NAME) -i inventory.yml

.PHONY: ping ## Ping the hosts
ping: 
	@ansible -i inventory.yml $(PLAYBOOK_NAME) -m ping