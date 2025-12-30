FROM alpine/ansible:latest

# Install ansible-lint using apk
RUN apk add --no-cache ansible-lint

WORKDIR /work
