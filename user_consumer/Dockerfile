FROM golang

ARG app_env
ENV APP_ENV $app_env

COPY ./app /go/src/github.com/user/user_consumer/app
WORKDIR /go/src/github.com/user/user_consumer/app

RUN go get ./
RUN go build

CMD ["go", "app.go"]
	
EXPOSE 8080
