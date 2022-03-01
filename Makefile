upn:
	docker stack deploy -c vps.yml vps
up:
	docker stack deploy -c vps.yml vps --with-registry-auth
down:
	docker stack rm vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
network:
	docker network create --driver overlay --attachable caddy
