Para desplegar todos los servicios, sin usar docker:

1. Levantar el servicio de Rabbitmq con el siguiente comando:
service rabbitmq-server start

2. Crear una base de datos en postgres con el nombre "phoenix". Crear la tabla users con el script que se envia adjuto.

3. Desplegar el servicio endpoint con el siguiente comando:
go run services/user_endpoint/app/app.go

4. Desplegar el servicio user_consumer con el siguiente comando:
go run services/user_consumer/app/app.go

5. Consumir el servicio con el comando:
curl -X POST -d "{\"name\": \"Kaled\", \"Email\": \"kldgarrido@gmail.com\", \"Password\": \"12345\", \"Verified\": true, \"Phone\": \"3175212067\", \"Country\": \"Colombia\", \"City\": \"Bogota\", \"Address\": \"Calle 114\" }" http://localhost:8080/users