
WHOAMI := $(shell whoami)

run:
	ansible-playbook --ask-become-pass -i "localhost," -c local playbook.yml --extra-vars="zsh_user=$(WHOAMI)"
