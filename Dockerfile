FROM golang:1.6-alpine

RUN go get github.com/parse-nl/go-gelf/gelf && go build SystemdJournal2Gelf.go

ENTRYPOINT SystemdJournal2Gelf
