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
pull:
	for file in services/*; do docker-compose -f $$file pull; done
export:
	7z a -p data.7z data
	gpg --encrypt --sign --recipient 'marc@marcpartensky.com' data.7z
	rm data.tgz
networks:
	docker network create --driver overlay --attachable caddy || true
	docker network create --driver overlay --attachable ldap || true
	docker network create --driver overlay --attachable postgres || true
	docker network create --driver overlay --attachable mongo || true
	docker network create --driver overlay --attachable vpn || true
	docker network create --driver overlay --attachable redis || true
	docker network create --driver overlay --subnet 172.22.1.0/24 --gateway 172.22.1.1 --attachable mailcow || true
node:
	docker node update --label-add net=web contabo
	docker node update --label-add net=none tower
