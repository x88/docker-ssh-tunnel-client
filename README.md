# SSH Tunnel Client

## Features

- TCP Port Forwarding

## Build

```bash
docker build -t ssh-tunnel-client .
```

## Environments

| variable | desc | default |
| -- | -- | :--: |
| SSH_SERVER | SSH Server Address connect to | none |
| SSH_SERVER_PORT | SSH Server Port connect to | 22 |
| SSH_USER | the User who is used to connect | root |

## Usage

```bash
# 1. init
docker run -it \
    --name=ssh-tunnel-client \
    -e SSH_SERVER=xxx.xxx.xxx.xxx \
    -e SSH_SERVER_PORT=2222 \
    -v /path/to/data:/ssh-tunnel-client/var \
    ssh-tunnel-client

# 2. start service after configure
docker start ssh-tunnel-client
```
