FROM postgres:9.6

COPY resources /root/resources

RUN psql airflow < /root/resources/airflow_dump
RUN rm -rf /root/resources

RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8