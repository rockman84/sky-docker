
FROM mysql:8.0.26

# Install
RUN apt-get update
RUN apt-get -y install \
        cron \
        nano && \
    apt-get clean

# Add configuration files
COPY image-files/ /

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Give execution rights on the cron job
RUN chmod +x /var/spool/cron/crontabs/root

## Run the command on container startup
#CMD cron && tail -f /var/log/cron.log

RUN crontab /var/spool/cron/crontabs/root

# Application environment
WORKDIR /