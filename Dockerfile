FROM scratch
MAINTAINER Ed Robinson <ed@a10e.org>

ADD ok /ok
CMD ["/ok"]
EXPOSE 8888
