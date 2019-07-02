# SSH Tunnel Client

## Features

- [x] tcp port forward
- [x] reconnect on failure
- [x] reload rules automatically

## Build

```bash
docker build -t ssh-tunnel-client .
```

## Environments

| variable | desc | default |
| -- | -- | :--: |
| SSH_SERVER | SSH Server Address to connect | none |
| SSH_SERVER_PORT | SSH Server Port to connect | 22 |
| SSH_USER | the User of SSH Server who is used to connect | root |

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
