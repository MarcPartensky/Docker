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

## Run few services at once
- Example : run a monero node
```sh
docker-compose -f services/monero-node.yml up -d
```

- Example : run multiple a wordpress website behind a proxy
```sh
# create a global network
docker network create --attachable caddy # add '--driver overlay' for swarm
# then deploy both services
docker-compose -f services/caddy.yml -f services/wordpress.yml up -d
```

## Deploy lots of services at once
- Select your services by putting those in ./env/vps.txt
```sh
nvim ./env/vps.txt
```

- Generate a ./stack/docker-compose.yml with all merged configurations
```sh
./bin/docker-setup.sh merge vps # or make merge
```

- Deploy
```sh
# as a swarm stack
docker stack deploy -c ./stack/docker-compose.yml vps # or make mswarm

# or using docker-compose
docker-compose -f ./stacks/docker-compose.yml up -d 
```

### Links
[vpn](https://github.com/kylemanna/docker-openvpn/blob/master/docs/docker-compose.md)
