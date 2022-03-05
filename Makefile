install:
	install 700 ./bin/docker-kit.sh /usr/local/bin/docker-kit
	install 700 ./bin/docker-merge.py /usr/local/bin/docker-merge
	install 700 ./bin/docker-setup.sh /usr/local/bin/docker-setup
compose:
	cat ./env/vps.txt | xargs ./bin/setup.sh
swarm:
	cat ./env/vps.txt | STACK=vps xargs ./bin/setup.sh
merge:
	./bin/setup.sh merge vps
down:
	docker stack rm vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
network:
	docker network create --driver overlay --attachable caddy
