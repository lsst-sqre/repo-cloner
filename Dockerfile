FROM docker.io/alpine/git

COPY entrypoint.sh /

ENTRYPOINT [ "entrypoint.sh" ]
