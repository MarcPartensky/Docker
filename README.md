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
- https://business.marcpartensky.com
- https://todolist.marcpartensky.com
- https://api.todolist.marcpartensky.com
- https://marc.wp.marcpartensky.com
- https://alex.wp.marcpartensky.com
- https://uml.marcpartensky.com
- https://grafana.marcpartensky.com
- https://prometheus.marcpartensky.com
- https://dns.marcpartensky.com
<!-- - https://dev.marcpartensky.com -->
<!-- - https://box.marcpartensky.com -->
<!-- - https://glou.marcpartensky.com -->
<!-- - https://minecraft.marcpartensky.com -->

## Reverse proxy
The `docker-compose.yml` configuration is compatible with the following reverse-proxies:
- traefik
- caddy
- nginx

## Commands
```sh
certbot certonly -d newdomain.com -n --standalone
certbot -d domain name,subdomain.domain name,www.domain name --expand
```

```sh
docker exec -i docker_minecraft_1 rcon-cli
```

### Links
[vpn](https://github.com/kylemanna/docker-openvpn/blob/master/docs/docker-compose.md)
