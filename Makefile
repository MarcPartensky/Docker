deploy:
	docker stack deploy -c vps.yml vps
export:
	tar cvzf data.tgz data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' data.tgz
	rm data.tgz
clean:
	rm data.tgz.gpg
