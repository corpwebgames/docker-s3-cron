FROM dpatriot/docker-awscli
MAINTAINER Shago Vyacheslav <v.shago@corpwebgames.com>

ADD init-cron.sh /opt/
RUN chmod +x /opt/init-cron.sh

# Define working directory.
WORKDIR /opt

CMD ["./init-cron.sh"]

