
WHOAMI := $(shell whoami)

run:
	ansible-playbook -vvvvv --ask-become-pass -i "localhost," -c local playbook.yml --extra-vars="zsh_user=$(WHOAMI)"

run-ubuntu:
	ansible-playbook -vvvvv --ask-become-pass -i "localhost," -c local playbook_ubuntu.yml --extra-vars="zsh_user=$(WHOAMI)"

gpr:
	git pull --rebase
