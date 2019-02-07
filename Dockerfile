from mysql:5.7

ENV MYSQL_ROOT_PASSWORD <RPASS>
ENV MYSQL_DATABASE <DB>
ENV MYSQL_USER <USER>
ENV MYSQL_PASSWORD <PASS>

ENV DUMP_FILE <FILE.sql.gz>
COPY $DUMP_FILE /docker-entrypoint-initdb.d/

RUN sed -i '$d' /usr/local/bin/docker-entrypoint.sh && \
    sed -i 's|/var/lib/mysql|/var/lib/mysql2|g' /etc/mysql/mysql.conf.d/mysqld.cnf && \
    /usr/local/bin/docker-entrypoint.sh mysqld && \
    rm -rf /docker-entrypoint-initdb.d/$DUMP_FILE

USER mysql

ENTRYPOINT []

CMD ["mysqld"]
