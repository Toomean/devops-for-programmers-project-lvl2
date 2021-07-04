deploy: install-deps run-playbook

install-deps:
	ansible-galaxy install -r requirements.yml

run-playbook:
	ansible-playbook -i inventory.ini playbook.yml --vault-password-file .ansible-secret

ansible-encrypt-string:
	ansible-vault encrypt_string --vault-password-file .ansible-secret $(VALUE) --name $(NAME)

ansible-encrypt-file:
	ansible-vault encrypt --vault-password-file .ansible-secret $(FILE)
