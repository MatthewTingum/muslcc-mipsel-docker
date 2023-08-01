FROM matthewtingum/dockerbuild:0.1

RUN wget -P /tmp/ https://musl.cc/mipsel-linux-musl-cross.tgz \
 && tar -xvf /tmp/mipsel-linux-musl-cross.tgz -C /tmp/ \
 && mv /tmp/mipsel-linux-musl-cross /opt/cross/ \
 && rm /tmp/mipsel-linux-musl-cross.tgz

ENV PATH="/opt/cross/mipsel-linux-musl-cross/bin/:$PATH"
