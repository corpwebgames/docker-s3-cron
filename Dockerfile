FROM dpatriot/docker-awscli
MAINTAINER Shago Vyacheslav <v.shago@corpwebgames.com>

ADD init-cron.sh /opt/
RUN chmod +x /opt/init-cron.sh

CMD ["./init-cron.sh"]
