export:
	tar cvzf /tmp/data.tgz /root/docker/data
	gpg --encrypt /tmp/data.tgz
	rm /tmp/data.tgz
clean:
	rm /tmp/data.tgz.gpg
