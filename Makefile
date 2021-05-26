export:
	tar cvzf /tmp/data.tgz /root/docker/data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' /tmp/data.tgz
	rm /tmp/data.tgz
clean:
	rm /tmp/data.tgz.gpg
	rm /tmp/data.tgz
