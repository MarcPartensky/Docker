export:
	tar cvzf /tmp/docker_data.tgz /root/docker/data
	gpg --encrypt --recipient 'marc.partensky@gmail.com' /tmp/docker_data.tgz
	mv /tmp/docker_data.tgz.gpg .
	rm /tmp/docker_data.tgz
clean:
	rm ./docker_data.tgz.gpg
	rm /tmp/docker_data.tgz
