deploy: setup run-playbook

setup:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml

run-playbook:
	ansible-playbook -i inventory.ini playbook.yml --vault-password-file .ansible-secret
