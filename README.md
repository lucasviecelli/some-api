# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

2.4.4

* Database creation

Docker compose

* Database initialization

Docker compose

* How to run the test suite

Sorry, I don't write tests this time

* Deployment instructions

Para executar o projeto, você precisa instalar o docker-compose. Após isso é só ir na raiz 
do projeto e executar: 

```
docker-compose up
```
Feito isso, vamos subir a aplicação(build, install e etc) e o PostgreSQL, executando 
todas as migrations necessárias. 

* End-Points 

Primeiro end-point 

http://localhost:3000/numbers?value=432
> {"result":6}

Segundo end-point 

http://localhost:3000/diffs_events
> {"data":[{"event_type":2,"value":2},{"event_type":3,"value":0}]}


http://localhost:3000/numbers?value=432