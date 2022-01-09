up:
	docker stack deploy -c vps.yml vps --with-registry-auth
down:
	docker stack rm vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
setup:
	docker network create caddy --driver overlay
