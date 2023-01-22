# Documentação da aplicação

#### Script Shell
<details>

Para executar o script basta rodar o comando: **`bash detectos.sh`**.
Ou executar no terminal o comando: **`chmod +x detectos.sh`** e no terminal rode o comando **`./detectos.sh`**.
Estes passos irá instalar o Docker na sua máquina via comando de linha a partir do script Shell, e após isso rodar a imagem do projeto.
</details>

#### Docker
<details>

O banco de dados está sendo gerado via Docker no arquivo **`docker-compose.yml`**.
Então você precisa do docker instalado em sua máquina para isso, o script shell **`detectos.sh`** resolverá este problema.
O Docker resolverá o problema se caso, você não tiver o driver do banco de dados instalados em sua máquina.
</details>

#### MySQL
<details>

Por padrão o projeto usa o banco de dados MySQL, porém você pode alterar no **`docker-compose.yml`** no parametro: **`image: mysql`** para **`image: SQL desejado`**.

Variáveis de ambiente:
```yml
environment:
      - MYSQL_ROOT_PASSWORD=example
      - MYSQL_ROOT_PASSWORD=example
      - MYSQL_USER=example
```
Caso queira mudar as credenciais do banco de dados basta mudar essas variáveis de ambiente voltada para sua aplicação.

Poderá escolher seu banco de dados relacionais a partir deste link: [Docker Hub](https://hub.docker.com/search?q=).
Após isso **leia atentamente a documentação** da imagem de seu banco de dados de preferencia, e coloque as variáveis de ambiente conforme documentação.

Por exemplo, se for PostgreSQL:
```yml
environment:
      - POSTGRES_PASSWORD=example
      - POSTGRES_USER=example
      - POSTGRES_DB=example

```
</details>