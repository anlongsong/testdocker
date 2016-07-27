
FROM busybox
ADD echo-server.sh /opt/echo-server.sh
RUN chmod +x /opt/echo-server.sh

CMD while true ; do nc -lp 8080 -e /opt/echo-server.sh ; done
