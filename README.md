# Docker
 
 
 
[![Heimdall Portal](https://i.imgur.com/RiHrnck.jpeg)](https://heimdall.marcpartensky.com)
 
 
 
Self-hosted infrastructure managing 150+ services via Docker Compose, deployed on a personal VPS with automated merge/deploy tooling and multi reverse-proxy support (Traefik, Caddy, Nginx).
 
 
 
All services are in the `services/` folder as individual Compose files, ready to deploy standalone or merged into a single stack.
 
 
 
## Services
 
 
 
&nbsp;
 
 
 
| Service | Description |
 
| --- | --- |
 
| [adguard](services/adguard/compose.yml) | Network-wide DNS ad blocker |
 
| [authentik](services/authentik/compose.yml) | SSO / identity provider |
 
| [authentik_ldap](services/authentik_ldap/compose.yml) | Authentik LDAP outpost |
 
| [authelia](services/authelia/compose.yml) | Lightweight SSO and 2FA gateway |
 
| [casdoor](services/casdoor/compose.yml) | OAuth2 / OIDC identity platform |
 
| [keycloak](services/keycloak/compose.yml) | Enterprise identity and access management |
 
| [ldap](services/ldap/compose.yml) | OpenLDAP directory server |
 
| [ldap-manager](services/ldap-manager/compose.yml) | LDAP management UI |
 
| [zitadel](services/zitadel/compose.yml) | Cloud-native identity platform |
 
| [hydra](services/hydra/compose.yml) | OAuth2 server (ORY Hydra) |
 
| [traefik](services/traefik/compose.yml) | Reverse proxy and automatic TLS termination |
 
| [caddy](services/caddy/compose.yml) | Modern reverse proxy with auto-HTTPS |
 
| [nginx](services/nginx/compose.yml) | Classic HTTP reverse proxy |
 
| [pangolin](services/pangolin/compose.yml) | Tunneled reverse proxy for private networks |
 
| [cloudflare](services/cloudflare/compose.yml) | Cloudflare tunnel / DDNS integration |
 
| [sslh](services/sslh/compose.yml) | SSL/SSH multiplexer on port 443 |
 
| [wireguard](services/wireguard/compose.yml) | WireGuard VPN server |
 
| [wireguard-client](services/wireguard-client/compose.yml) | WireGuard VPN client |
 
| [openvpn](services/openvpn/compose.yml) | OpenVPN server |
 
| [openvpn_client](services/openvpn_client/compose.yml) | OpenVPN client |
 
| [dockvpn](services/dockvpn/compose.yml) | VPN-in-Docker setup |
 
| [ipsec](services/ipsec/compose.yml) | IPSec VPN (strongSwan) |
 
| [libreswan](services/libreswan/compose.yml) | IPSec VPN (Libreswan) |
 
| [pritunl](services/pritunl/compose.yml) | OpenVPN management platform |
 
| [gluetun](services/gluetun/compose.yml) | VPN client container with killswitch |
 
| [wstunnel](services/wstunnel/compose.yml) | WebSocket tunneling |
 
| [tunnel](services/tunnel/compose.yml) | Generic tunnel service |
 
| [grafana](services/grafana/compose.yml) | Metrics and monitoring dashboards |
 
| [prometheus](services/prometheus/compose.yml) | Time-series metrics collection |
 
| [cadvisor](services/cadvisor/compose.yml) | Container resource usage monitoring |
 
| [signoz](services/signoz/compose.yml) | OpenTelemetry observability platform |
 
| [uptime](services/uptime/compose.yml) | Uptime Kuma - service health monitoring |
 
| [diun](services/diun/compose.yml) | Docker image update notifier |
 
| [wud](services/wud/compose.yml) | What's Up Docker - image update tracker |
 
| [fail2ban](services/fail2ban/compose.yml) | Intrusion prevention via log analysis |
 
| [portainer](services/portainer/compose.yml) | Docker container management UI |
 
| [dockge](services/dockge/compose.yml) | Docker Compose stack manager UI |
 
| [rancher](services/rancher/compose.yml) | Kubernetes / multi-cluster management |
 
| [swarmpit](services/swarmpit/compose.yml) | Docker Swarm management UI |
 
| [swarm-visualizer](services/swarm-visualizer/compose.yml) | Docker Swarm topology visualizer |
 
| [mobydock](services/mobydock/compose.yml) | Docker management dashboard |
 
| [dockerdash](services/dockerdash/compose.yml) | Docker container dashboard |
 
| [docker](services/docker/compose.yml) | Docker-in-Docker setup |
 
| [registry](services/registry/compose.yml) | Private Docker image registry |
 
| [sablier](services/sablier/compose.yml) | On-demand container startup |
 
| [gitea](services/gitea/compose.yml) | Lightweight self-hosted Git service |
 
| [gitlab](services/gitlab/compose.yml) | Full DevOps platform with CI/CD |
 
| [jenkins](services/jenkins/compose.yml) | CI/CD automation server |
 
| [gitbook](services/gitbook/compose.yml) | Git-based documentation platform |
 
| [bookstack](services/bookstack/compose.yml) | Wiki and knowledge base |
 
| [wikijs](services/wikijs/compose.yml) | Modern wiki platform |
 
| [docuwiki](services/docuwiki/compose.yml) | DokuWiki flat-file wiki |
 
| [outline](services/outline/compose.yml) | Team knowledge base and wiki |
 
| [documize](services/documize/compose.yml) | Enterprise document management |
 
| [logseq](services/logseq/compose.yml) | Local-first knowledge graph |
 
| [mermaid](services/mermaid/compose.yml) | Diagram rendering service |
 
| [jupyterlab](services/jupyterlab/compose.yml) | Interactive Python notebook environment |
 
| [jupyterhub](services/jupyterhub/compose.yml) | Multi-user JupyterHub server |
 
| [code-server](services/code-server/compose.yml) | VS Code in the browser |
 
| [streamlit](services/streamlit/compose.yml) | Streamlit app hosting |
 
| [ialab](services/ialab/compose.yml) | AI/ML experimentation environment |
 
| [ia](services/ia/compose.yml) | AI service deployment |
 
| [mistral](services/mistral/compose.yml) | Self-hosted Mistral LLM |
 
| [open-webui](services/open-webui/compose.yml) | Web UI for local LLMs (Ollama) |
 
| [real-esrgan](services/real-esrgan/compose.yml) | AI image upscaling service |
 
| [chatgpt](services/chatgpt/compose.yml) | ChatGPT API proxy / UI |
 
| [serge](services/serge/compose.yml) | LLaMA chat interface |
 
| [nextcloud](services/nextcloud/compose.yml) | Cloud storage and collaboration suite |
 
| [owncloud](services/owncloud/compose.yml) | Self-hosted file storage platform |
 
| [ocis](services/ocis/compose.yml) | ownCloud Infinite Scale |
 
| [seafile](services/seafile/compose.yml) | High-performance file sync and share |
 
| [filebrowser](services/filebrowser/compose.yml) | Web-based file manager |
 
| [syncthing](services/syncthing/compose.yml) | Peer-to-peer file synchronization |
 
| [minio](services/minio/compose.yml) | S3-compatible object storage |
 
| [webdav](services/webdav/compose.yml) | WebDAV file server |
 
| [vaultwarden](services/vaultwarden/compose.yml) | Bitwarden-compatible password manager |
 
| [paperless](services/paperless/compose.yml) | Paperless-ngx document management and OCR |
 
| [docuseal](services/docuseal/compose.yml) | Document signing platform |
 
| [pandoc](services/pandoc/compose.yml) | Universal document converter |
 
| [calibre](services/calibre/compose.yml) | E-book library and converter |
 
| [wallabag](services/wallabag/compose.yml) | Read-it-later / article archiver |
 
| [linkding](services/linkding/compose.yml) | Minimalist bookmark manager |
 
| [linkwarden](services/linkwarden/compose.yml) | Collaborative bookmark manager |
 
| [yourls](services/yourls/compose.yml) | Self-hosted URL shortener |
 
| [kutt](services/kutt/compose.yml) | Modern URL shortener |
 
| [postgres](services/postgres/compose.yml) | PostgreSQL database |
 
| [pgadmin](services/pgadmin/compose.yml) | PostgreSQL admin UI |
 
| [pgweb](services/pgweb/compose.yml) | Lightweight PostgreSQL web client |
 
| [postgrest](services/postgrest/compose.yml) | REST API auto-generated from PostgreSQL schema |
 
| [pg-backup](services/pg-backup/compose.yml) | Automated PostgreSQL backup |
 
| [mysql](services/mysql/compose.yml) | MySQL database |
 
| [mongo](services/mongo/compose.yml) | MongoDB database |
 
| [mongo_express](services/mongo_express/compose.yml) | MongoDB web admin UI |
 
| [mongo_backup](services/mongo_backup/compose.yml) | Automated MongoDB backup |
 
| [redis](services/redis/compose.yml) | In-memory key-value store |
 
| [elasticsearch](services/elasticsearch/compose.yml) | Full-text search and analytics engine |
 
| [kibana](services/kibana/compose.yml) | Elasticsearch visualization UI |
 
| [dbdesigner](services/dbdesigner/compose.yml) | Database schema design tool |
 
| [nocodb](services/nocodb/compose.yml) | Airtable-like interface over any SQL database |
 
| [n8n](services/n8n/compose.yml) | Workflow automation platform |
 
| [apprise](services/apprise/compose.yml) | Multi-platform push notification service |
 
| [gotify](services/gotify/compose.yml) | Self-hosted push notification server |
 
| [ntfy](services/ntfy/compose.yml) | Simple pub/sub notification service |
 
| [mosquitto](services/mosquitto/compose.yml) | MQTT message broker |
 
| [matrix](services/matrix/compose.yml) | Matrix homeserver (Synapse) |
 
| [conduit](services/conduit/compose.yml) | Lightweight Matrix homeserver |
 
| [rocketchat](services/rocketchat/compose.yml) | Self-hosted team chat platform |
 
| [ssh-chat](services/ssh-chat/compose.yml) | Chat over SSH |
 
| [discord-bot](services/discord-bot/compose.yml) | Discord bot deployment |
 
| [discord_chatgpt](services/discord_chatgpt/compose.yml) | Discord bot with ChatGPT integration |
 
| [jellyfin](services/jellyfin/compose.yml) | Media server (video, music, photos) |
 
| [plex](services/plex/compose.yml) | Plex media server |
 
| [peertube](services/peertube/compose.yml) | Self-hosted video platform |
 
| [audiobookshelf](services/audiobookshelf/compose.yml) | Audiobook and podcast server |
 
| [minidlna](services/minidlna/compose.yml) | DLNA media streaming server |
 
| [stash](services/stash/compose.yml) | Media organizer (self-hosted) |
 
| [yt-dlp](services/yt-dlp/compose.yml) | YouTube / video downloader service |
 
| [playlistdl](services/playlistdl/compose.yml) | Playlist download automation |
 
| [invidious](services/invidious/compose.yml) | Privacy-friendly YouTube frontend |
 
| [home-assistant](services/home-assistant/compose.yml) | Home automation platform |
 
| [pihole](services/pihole/compose.yml) | DNS-based ad blocker |
 
| [ankisyncserver](services/ankisyncserver/compose.yml) | Self-hosted Anki flashcard sync server |
 
| [ffsync](services/ffsync/compose.yml) | Firefox Sync server |
 
| [etesync](services/etesync/compose.yml) | Encrypted contacts and calendar sync |
 
| [open-web-calendar](services/open-web-calendar/compose.yml) | Web-based calendar aggregator |
 
| [appflowy](services/appflowy/compose.yml) | Open-source Notion alternative |
 
| [focalboard](services/focalboard/compose.yml) | Project management and Kanban boards |
 
| [todolist](services/todolist/compose.yml) | To-do list service |
 
| [izitdone](services/izitdone/compose.yml) | Task completion tracker |
 
| [moodle](services/moodle/compose.yml) | E-learning platform |
 
| [openedx](services/openedx/compose.yml) | Open edX learning management system |
 
| [frappelms](services/frappelms/compose.yml) | Frappe-based LMS |
 
| [wger](services/wger/compose.yml) | Workout and fitness tracker |
 
| [time-assistant](services/time-assistant/compose.yml) | Time tracking assistant |
 
| [minecraft_bedrock](services/minecraft_bedrock/compose.yml) | Minecraft Bedrock edition server |
 
| [minecraft_champi](services/minecraft_champi/compose.yml) | Custom Minecraft server |
 
| [minecraft_jungle](services/minecraft_jungle/compose.yml) | Custom Minecraft server |
 
| [crafty-controller](services/crafty-controller/compose.yml) | Minecraft server manager |
 
| [mcmyadmin](services/mcmyadmin/compose.yml) | Minecraft server admin panel |
 
| [mc-router](services/mc-router/compose.yml) | Minecraft reverse proxy/router |
 
| [satisfactory](services/satisfactory/compose.yml) | Satisfactory dedicated game server |
 
| [pxe](services/pxe/compose.yml) | PXE boot server for network installs |
 
| [arch](services/arch/compose.yml) | Arch Linux container environment |
 
| [nixos](services/nixos/compose.yml) | NixOS container environment |
 
| [android](services/android/compose.yml) | Android emulator in Docker |
 
| [vnc](services/vnc/compose.yml) | VNC remote desktop server |
 
| [web-terminal](services/web-terminal/compose.yml) | Browser-based terminal (Wetty) |
 
| [rustdesk](services/rustdesk/compose.yml) | Self-hosted remote desktop server |
 
| [sshpiperd](services/sshpiperd/compose.yml) | SSH proxy and multiplexer |
 
| [ipfs](services/ipfs/compose.yml) | IPFS distributed storage node |
 
| [monero-node](services/monero-node/compose.yml) | Monero full node |
 
| [monero-miner](services/monero-miner/compose.yml) | Monero mining setup |
 
| [bisq](services/bisq/compose.yml) | Decentralized Bitcoin exchange |
 
| [cowrie](services/cowrie/compose.yml) | SSH honeypot |
 
| [beef](services/beef/compose.yml) | Browser exploitation framework (pentesting lab) |
 
| [burpsuite](services/burpsuite/compose.yml) | Web security testing proxy |
 
| [feroxbuster](services/feroxbuster/compose.yml) | Web content discovery tool |
 
| [sqlmap](services/sqlmap/compose.yml) | SQL injection testing tool |
 
| [kippo](services/kippo/compose.yml) | SSH honeypot (legacy) |
 
| [duplicati](services/duplicati/compose.yml) | Encrypted cloud backup |
 
| [backrest](services/backrest/compose.yml) | Restic backup management UI |
 
| [airbyte](services/airbyte/compose.yml) | Data integration and ETL platform |
 
| [fuseki](services/fuseki/compose.yml) | Apache Jena Fuseki SPARQL server |
 
| [suitecrm](services/suitecrm/compose.yml) | Open-source CRM |
 
| [wordpress](services/wordpress/compose.yml) | WordPress CMS (multiple instances) |
 
| [resume](services/resume/compose.yml) | Reactive Resume - self-hosted CV builder |
 
| [clipshare](services/clipshare/compose.yml) | Clipboard sharing service |
 
| [webshot](services/webshot/compose.yml) | URL screenshot service |
 
| [fdroid](services/fdroid/compose.yml) | F-Droid self-hosted app repository |
 
| [lrclib](services/lrclib/compose.yml) | Lyrics database service |
 
| [ebook2audiobookxtts](services/ebook2audiobookxtts/compose.yml) | E-book to audiobook converter (TTS) |
 
 
 
## Reverse Proxy
 
 
 
Compatible with Traefik, Caddy, and Nginx. Labels are included in each Compose file for automatic route registration.
 
 
 
```sh
 
# Example: Caddy + WordPress behind reverse proxy
 
docker network create --attachable caddy
 
docker-compose -f services/caddy.yml -f services/wordpress.yml up -d
 
```
 
 
 
## Deployment
 
 
 
**Run a single service:**
 
```sh
 
docker-compose -f services/<service>/compose.yml up -d
 
```
 
 
 
**Merge and deploy multiple services at once:**
 
```sh
 
# 1. Select services
 
nvim ./env/vps.txt
 
 
 
# 2. Generate merged stack
 
./bin/docker-setup.sh merge vps
 
 
 
# 3. Deploy as a Compose stack
 
docker-compose -f ./stacks/docker-compose.yml up -d
 
 
 
# or as a Swarm stack
 
docker stack deploy -c ./stack/docker-compose.yml vps
 
```
