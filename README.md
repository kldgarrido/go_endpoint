For deploy all services without use docker

1. Run the rabbitmq service with the command:
service rabbitmq-server start

2. Create a postgres data base, the data base name is "phoenix". Execute the script "table.sql" for Create the table user.

3. Deploy the endpoint service with the command:
go run services/user_endpoint/app/app.go

4. Deploy the consumer service with the command
go run services/user_consumer/app/app.go

5. Consume the endpoint web service with the command:
curl -X POST -d "{\"name\": \"Kaled\", \"Email\": \"kldgarrido@gmail.com\", \"Password\": \"12345\", \"Verified\": true, \"Phone\": \"3175212067\", \"Country\": \"Colombia\", \"City\": \"Bogota\", \"Address\": \"Calle 114\" }" http://localhost:8080/users