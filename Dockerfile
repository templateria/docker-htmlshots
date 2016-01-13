FROM ubuntu:14.04

MAINTAINER Pedro Padron "pedro@templateria.com"

ADD phantomjs2   /usr/bin/phantomjs
ADD htmlshots.js /usr/bin/htmlshots.js

RUN apt-get update && apt-get -y upgrade && apt-get install -y software-properties-common
RUN add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse"
RUN apt-get update && apt-get -y install libfontconfig1 libicu52 libjpeg-turbo8 libpng3 ttf-mscorefonts-installer && chmod +x /usr/bin/phantomjs

EXPOSE 8080

CMD ["/usr/bin/phantomjs", "--disk-cache=true", "--ignore-ssl-errors=true", "--local-to-remote-url-access=true", "/usr/bin/htmlshots.js", "8080"]