# AWS PROJECT 01

## build and run docker image 
```
in root folder

./gradlew build 

docker build -t luizimcpi/aws-publisher-service .

docker network create -d bridge my-network

docker-compose up
```

## Create Products 

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


