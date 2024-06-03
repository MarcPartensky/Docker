<!-- [![Docker Swarm Deployed](https://github.com/MarcPartensky/Docker/actions/workflows/docker-swarm-deploy.yml/badge.svg)](https://github.com/MarcPartensky/Docker/actions/workflows/docker-swarm-deploy.yml) -->

# Docker
<!-- [![Docker Swarm Services](https://cdn.discordapp.com/attachments/809914059981586462/1042966875514077227/unknown.png)](https://swarm.marcpartensky.com) -->
[![Heimdall Portal](https://i.imgur.com/RiHrnck.jpeg)](https://heimdall.marcpartensky.com)

## Domains
- https://adguard.marcpartensky.com
- https://arch.marcpartensky.com
- https://authentik.marcpartensky.com
- https://cron.marcpartensky.com
- https://dbdesigner.marcpartensky.com
- https://dockge.marcpartensky.com
- https://docuseal.marcpartensky.com
- https://pad.marcpartensky.com
- https://firefox.marcpartensky.com
- https://file.marcpartensky.com
- https://board.marcpartensky.com
- https://git.marcpartensky.com
- https://gitlab.marcpartensky.com
- https://grafana.marcpartensky.com
- https://heimdall.marcpartensky.com
- https://homer.marcpartensky.com
- https://jellyfin.marcpartensky.com
- https://jenkins.marcpartensky.com
- https://jupyterlab.marcpartensky.com
- https://mail.marcpartensky.com
- https://mcmyadmin.marcpartensky.com
- https://storage.marcpartensky.com
- https://pandoc.marcpartensky.com
- https://paperless.marcpartensky.com
- https://peertube.marcpartensky.com
- https://pgadmin.marcpartensky.com
- https://pgweb.marcpartensky.com
- https://docker.marcpartensky.com
- https://printer.marcpartensky.com
- https://torrent.marcpartensky.com
- https://rancher.marcpartensky.com
- https://cv.marcpartensky.com
- https://serge.marcpartensky.com
- https://syncthing.marcpartensky.com
- https://traefik.marcpartensky.com
- https://vault.marcpartensky.com
- https://terminal.marcpartensky.com
- https://webshot.marcpartensky.com
- https://marcpartensky.com
- https://wger.marcpartensky.com
- https://wss.marcpartensky.com
- https://yt.marcpartensky.com
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
