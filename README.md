# API Codeway
API CodeWay é uma api criada com a finalidade de resolver tarefas complexas em relação a busca de dados que possam ser úteis no momento do cadastro de um novo investidor de um fundo da BNY Mellon.

## Tecnologias utilizadas
- TypeScript
- NodeJS
- PostgreSQL
- Docker
- Docker compose
- Express

## Como utilizar
1. Instale as ferramentas necessárias na sua máquina.
- Yarn
- Docker
- Docker compose

2. Clone o projeto na sua máquina.

3. Instale as dependências do projeto. Execute o comando abaixo na raiz do projeto.
```cmd
yarn install
```

4. Coloque os serviços para funcionar com:
```cmd
docker-compose up -d
```
```cmd
yarn dev
```

#### *Oberservação: Para acessar a interface de administração do banco, PGAdmin, acesso localhost:5050 

## Acesso a documentação
```
http://localhost:{suaPortaDeEnv}/api-docs
```
