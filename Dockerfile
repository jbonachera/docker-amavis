FROM docker.io/jbonachera/consul-template
MAINTAINER Julien BONACHERA <julien@bonachera.fr>
RUN useradd -u 993 amavis
RUN dnf install -y amavisd-new perl-DBD-MySQL perl-Text-ParseWords
ADD reload_amavis_if_running /usr/local/bin/reload_amavis_if_running
RUN chmod +x /usr/local/bin/reload_amavis_if_running
VOLUME ["/var/spool/amavisd"]
