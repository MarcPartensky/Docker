compose:
	cat ./env/vps.txt | xargs ./bin/setup.sh
swarm:
	cat ./env/vps.txt | STACK=vps xargs ./bin/setup.sh
merge:
	cat ./env/vps.txt | xargs -I @ echo ./services/@.yml | xargs ./bin/merge.py
down:
	docker stack rm vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
network:
	docker network create --driver overlay --attachable caddy
