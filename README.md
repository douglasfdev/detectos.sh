# Documentação da aplicação

#### Script Shell
<details>

Para executar o docker basta rodar o comando `chmod +x detectos.sh`.
No terminal rode o comando `./detectos.sh`.
Estes passos irá instalar o Docker na sua máquina via comando de linha a partir do script Shell, e após isso rodar a imagem do projeto.
</details>

#### Docker
<details>

O banco de dados está sendo gerado via Docker no arquivo `docker-compose.yml`.
Então você precisa do docker instalado em sua máquina para isso, o script shell `detectos.sh` resolverá este problema.
O Docker resolverá o problema se caso, você não tiver o driver do banco de dados instalados em sua máquina.
</details>

#### MySQL
<details>

Por padrão o projeto usa o banco de dados MySQL, porém você pode alterar no `docker-compose.yml` no parametro: `image: mysql` para `image: SQL desejado`
</details>