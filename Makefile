compose:
	cat ./env/vps.txt | xargs ./setup.sh
swarm:
	cat ./env/vps.txt | STACK=vps xargs ./setup.sh
down:
	docker stack rm vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
network:
	docker network create --driver overlay --attachable caddy
