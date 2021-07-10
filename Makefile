deploy: setup run-playbook

setup:
	ansible-galaxy install -r requirements.yml

run-playbook:
	ansible-playbook -vv -i inventory.ini playbook.yml --vault-password-file .ansible-secret
