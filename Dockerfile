FROM golang
ADD . /user_consumer/app
ADD . /user_endpoint/app
WORKDIR /user_consumer/app
WORKDIR /user_endpoint/app
CMD ["go", "user_consumer/app/app.go"]
CMD ["go", "user_endpoint/app/app.go"]
