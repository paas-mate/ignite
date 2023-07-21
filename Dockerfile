FROM ttbb/sqlline:nake AS sqlline

FROM shoothzj/base:jdk17

WORKDIR /opt

ENV IGNITE_HOME /opt/ignite

RUN wget https://downloads.apache.org/ignite/2.15.0/apache-ignite-2.15.0-bin.zip && \
unzip apache-ignite-2.15.0-bin.zip && \
mv apache-ignite-2.15.0-bin ignite && \
rm -f apache-ignite-2.15.0-bin.zip

COPY --from=sqlline /opt/sqlline/ /opt/ignite/libs/

WORKDIR /opt/ignite
