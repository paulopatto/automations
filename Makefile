.prepare:
	# For ubuntu based machine
	# TODO: Change this to multi plataform
	sudo apt-get update -y
	sudo apt-get install python-pip python-dev build-essential vim
	sudo pip install --upgrade pip virtualenv virtualenvwrapper ansible

default: .prepare
	# TODO: Change 'inventory' to use ENV VAR $INVENTORY_FILE
	ansible-playbook --ask-become-pass --ask-become-pass --inventory-file=inventory --vault-password-file=./resources/vaultpass workstation.yml

edit-secrets:
	EDITOR='vim' ansible-vault edit vars/keys.env.yml --vault-password-file=resources/vaultpass

rekey-secrets:
	ansible-vault rekey vars/key.env.yml --vault-password-file=resources/vaultpass

list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$' | xargs

.PHONY: list
