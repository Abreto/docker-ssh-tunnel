# docker-ssh-tunnel
Create an SSH Tunnel

usage:
```
# docker run -d \
    [-p <outter port>:<inner port> \]
    -v <path/to/id_file>:/app/conn.pem:ro \
    -e "SSH_HOST=<remote host>" \
    [-e "SSH_USER=<login user>" \]
    [-e "SSH_PORT=<ssh port>" \]
    abreto/ssh-tunnel -<L|R|D> [host1:]<port1>:<host2>:<port2>[ other options]
```

The default `SSH_USER` is `root` and the default `SSH_PORT` is `22`.
