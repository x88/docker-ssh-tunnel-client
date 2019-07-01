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
    -v /path/to/data:/ssh-tunnel-client/var \
    ssh-tunnel-client

# 2. start service after configure
docker start ssh-tunnel-client
```
