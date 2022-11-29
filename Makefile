compose:
	cat ./env/vps.txt | xargs ./bin/docker-setup.sh
swarm:
	cat ./env/vps.txt | STACK=vps xargs ./bin/docker-setup.sh
merge:
	./bin/docker-setup.sh merge vps
mswarm: merge
	docker stack deploy -c stacks/docker-compose.yml vps
down:
	docker stack rm vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
networks:
	docker network create --driver overlay --attachable caddy
	docker network create --driver overlay --attachable ldap
	docker network create --driver overlay --attachable postgres
node:
	docker node update --label-add net=web contabo
	docker node update --label-add net=none tower
