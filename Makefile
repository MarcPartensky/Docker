up:
	docker stack deploy -c vps.yml vps --with-registry-auth
upn:
	docker stack deploy -c vps.yml vps
down:
	docker stack rm vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
network:
	docker network create --driver overlay --attachable caddy
