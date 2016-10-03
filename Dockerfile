FROM lsiobase/alpine.python
MAINTAINER Thraxis

# set python to use utf-8 rather than ascii
ENV PYTHONIOENCODING="UTF-8"

# install packages
RUN \
 apk add --no-cache \
	py-crypto 
  
# copy local files
COPY root/ /

# ports and volumes
EXPOSE 8081
VOLUME /config /downloads /tv
