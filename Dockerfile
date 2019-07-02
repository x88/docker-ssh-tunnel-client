FROM alpine:3.10

RUN apk add --no-cache openssh inotify-tools

COPY ./ /ssh-tunnel-client
RUN \
chmod +x /ssh-tunnel-client/bin/* && \
ln -sf /ssh-tunnel-client/etc/ssh_config /etc/ssh/ssh_config

ENV SSH_SERVER ""
ENV SSH_SERVER_PORT "22"
ENV SSH_USER "root"
ENV ADD_SSH_CLIENT_OPT ""

VOLUME /ssh-tunnel-client/var

CMD /ssh-tunnel-client/bin/ssh-tunnel-client