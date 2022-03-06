FROM docker:dood

# RUN  curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# RUN chmod +x /usr/local/bin/docker-compose
COPY docker-compose.yml docker-compose.yml
COPY vps.yml vps.yml

RUN docker stack deploy -c vps.yml vps

ENTRYPOINT ["docker"]
CMD ["service", "ls"]
