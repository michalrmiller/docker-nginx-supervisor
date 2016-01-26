FROM nginx:1.9.9
RUN apt-get update && \
    apt-get install -y supervisor && \
    rm -rf /var/lib/apt/lists/*
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 80 443
CMD ["/usr/bin/supervisord"]