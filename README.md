# GMUD
Por não encontrar ferramentas de Workflow específica para Gestão de mudanças em sistemas de TI. Criei uma alternativa utilizando uma ferramenta OpenSource de lowcode e banco de  dados em PostGres para isto.

## Etapa 1: Máquina Virtual
1. Crie uma máquina virtual com Linux Ubuntu
2. Instale e Docker

## Etapa 2: Docker
1. Crie o arquivo docker-compose.yml
2. Crie o conteúdo do arquivo (veja na pasta 'Docker' deste repositório)
3. 3. Execute o comando docker compose up -d

## Etapa 3: Banco de dados
1. Abra o banco de dados através de alguma ferramenta de SGBD para PostGres (PGAdmin, Debeaver e etc)
2. Execute o script SQL (veja na pasta 'PostGres' deste repositório)

## Etapa 4: AppSmith
1. Abra a URL do AppSmith (de acordo com a porta do docker-compose.yml) no navegador
2. Faça a configuração inicial da ferramenta

## Etapa 5: Aplicação
1. No AppSmith, crie um workspace para a GMUD
2. Clique em criar nova aplicação "Create New"
3. Importe o arquivo json da aplicação (veja na pasta 'AppSmith')
   
