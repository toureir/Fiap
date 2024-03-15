# Ping

Aplicação Java com container para exemplo

## Pré-requisitos

- Java 17+
- Docker 
- Acesso a internet
- Acesso ao Docker Hub

## Instalação

#### Clone

```
https://github.com/TiagoAlcan/fiap-checkpoint1.git
```

## Execução


#### Docker

* Criar imagem

```
docker build -t fiap-checkpoint1 .
```

* Executar container

spring.profiles.active=<prd|dev|stg>

```
docker run -d -p 8080:8080 -e PROFILE=<prd|dev|stg> fiap-checkpoint1
```

## Container Registry


#### Docker Hub

* Login

```
docker login -u <username>
```

* Criar imagem pronta para upload (método 1 - criando nova imagem)


```
docker build -t <username>/fiap-checkpoint1 .
```


* Criar imagem pronta para upload (método 2 - renomeando imagem existente)


```
docker tag checkpoint1 tiagoalcan/fiap-checkpoint1
```


* Upload de imagem para o Docker Hub


```
docker push tiagoalcan/fiap-checkpoint1 
```

*Comando docker para executar a aplicação a partir do docker hub com o profile "dev" (desenvolvimento)

```
docker run -d -p 8080:8080 -e PROFILE=dev tiagoalcan/fiap-checkpoint1 
```

*Comando docker para executar a aplicação a partir do docker hub com o profile "prd" (produção)

```
docker run -d -p 8080:8080 -e PROFILE=prd tiagoalcan/fiap-checkpoint1 
```

*Comando docker para executar a aplicação a partir do docker hub com o profile "stg"(stagging - homologação)

```
docker run -d -p 8080:8080 -e PROFILE=stg tiagoalcan/fiap-checkpoint1  
```

#### Navegação

- Base

http://localhost:8080

- Endpoint que retorna string "Pong"

http://localhost:8080/ping 


## Features (Funcionalidades)

- Múltiplos profiles

## Contatos

- Tiago Gomes Alcântara - tiago.gomesalcan@email.com
- Guilherme Loureiro - guilhermelsba@email.com

## Referencias

 - [GitHub](https://github.com/TiagoAlcan)
 - [DockerHub](https://hub.docker.com/u/tiagoalcan)
