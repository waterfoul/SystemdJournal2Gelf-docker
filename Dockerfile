FROM golang:1.6

RUN apt-get install git && \
	update-ca-certificates && \
	go get github.com/parse-nl/go-gelf/gelf && \
	wget -qO- https://github.com/parse-nl/SystemdJournal2Gelf/archive/master.tar.gz | tar -xvz && \
	mv SystemdJournal2Gelf-*/* ./ && \
	rm -rf SystemdJournal2Gelf-* && \
	go build SystemdJournal2Gelf.go

ENTRYPOINT /go/SystemdJournal2Gelf
