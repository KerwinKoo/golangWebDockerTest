FROM golang:latest

ADD . $GOPATH/src

ADD run.sh /run.sh

RUN chmod +x /run.sh

EXPOSE 8080

WORKDIR $GOPATH/src

CMD ["/run.sh"]
