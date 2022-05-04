# AWS PROJECT 01

## TODO
```
fix application docker compose
```

## build and run docker image 
```
in root folder execute follow commands in order:

1- docker network create -d bridge my-network

2- cd localstack 

3- docker-compose up -d

4- cd ..

5- ./gradlew build 

6- docker build -t luizimcpi/aws-publisher-service .

7- docker-compose up
```

## Create Local Product

```
curl --location --request POST 'localhost:8080/api/products' \
--header 'Content-Type: application/json' \
--data-raw '{
"name": "Teste",
"model": "Modelo teste",
"code": "COD1",
"price": 1.2,
"color": "blue"
}'
```

## READ MESSAGE FROM LOCAL QUEUE
```
aws --endpoint-url=http://localhost:4566 sqs receive-message --queue-url http://localhost:4566/queue/product-events --max-number-of-messages 10
```

## Destroy all created containers
```
docker-compose down
```

