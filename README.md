## Readme
Playbook realiza a criação dos containers Docker:

- mysql 5.7
- rundeck 3 / ansible 2.8.5


#### Variáveis
- ROOT_DB_PASS (senha root do container mysql)

#### Execução
ansible-playbook site.yml -e "ROOT_DB_PASS=password" --ask-vault-pass

