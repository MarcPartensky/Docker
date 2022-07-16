[![Docker Swarm Deployed](https://github.com/MarcPartensky/Docker/actions/workflows/docker-swarm-deploy.yml/badge.svg)](https://github.com/MarcPartensky/Docker/actions/workflows/docker-swarm-deploy.yml)

# Docker

## Domains
- https://marcpartensky.com
- https://pandoc.marcpartensky.com
- https://ialab.marcpartensky.com
- https://notebook.marcpartensky.com
- https://searx.marcpartensky.com
- https://cloud.marcpartensky.com
- https://wordpress.marcpartensky.com
- https://git.marcpartensky.com
- https://gitlab.marcpartensky.com
- https://todolist.marcpartensky.com
- https://api.todolist.marcpartensky.com
- https://uml.marcpartensky.com
- https://grafana.marcpartensky.com
- https://prometheus.marcpartensky.com
- https://swarm.marcpartensky.com
- https://auth.marcpartensky.com
- https://seafile.marcpartensky.com
- https://mail.marcpartensky.com
- https://arch.marcpartensky.com
<!-- - https://dns.marcpartensky.com -->
<!-- - https://glou.marcpartensky.com -->
<!-- - https://minecraft.marcpartensky.com -->

## Reverse proxy
The `docker-compose.yml` configuration is compatible with the following reverse-proxies:
- traefik
- caddy
- nginx


## Deploy the stack
```
docker stack deploy -c vps.yml vps
```

### Links
[vpn](https://github.com/kylemanna/docker-openvpn/blob/master/docs/docker-compose.md)
