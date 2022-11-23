FROM shoothzj/base:jdk17

WORKDIR /opt

ENV ROCKETMQ_HOME /opt/rocketmq

RUN wget https://downloads.apache.org/ignite/3.0.0-beta1/ignite3-3.0.0-beta1.zip && \
unzip ignite3-3.0.0-beta1.zip && \
mkdir -p ignite && \
mv ignite3-cli-3.0.0-beta1 ignite-cli && \
mv ignite3-db-3.0.0-beta1 ignite-db && \
rm -rf ignite3-3.0.0-beta1.zip

WORKDIR /opt/rocketmq
