FROM alpine:latest

# ENV vars

# GW_HOST: Gateway host to ssh into
# GW_USER: username to ssh login into GW_HOST
# TARGET_IP: target ip in the local network that has the service running
# TARGET_PORT: target service port in the local network
# REMOTE_PORT: remote Gateway port to be forwarded

# mount ssh private key in /id_rsa

RUN apk --no-cache add openssh-client bash socat
COPY cmd.sh /
CMD /cmd.sh
