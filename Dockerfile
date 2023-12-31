FROM node:alpine

RUN npm install -g tiddlywiki@5.3.3

# Setup wiki volume
VOLUME /var/lib/tiddlywiki
WORKDIR /var/lib/tiddlywiki

# Add init-and-run script
ADD init-and-run-wiki /usr/local/bin/init-and-run-wiki

# Envs
ENV LAZYLOADING "OFF"

# Meta
ENTRYPOINT ["/bin/sh"]
CMD ["/usr/local/bin/init-and-run-wiki"]
