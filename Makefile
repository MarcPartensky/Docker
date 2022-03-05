up:
	SWARM=false STACK=vps ./setup.sh caddy registry website portainer discord-bot
down:
	docker stack rm vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
network:
	docker network create --driver overlay --attachable caddy
