FROM gitpod/workspace-full:latest

USER root

RUN apt-get update && apt-get install -y \
    byacc flex pkg-config libpng-dev \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/* \
    && git clone https://github.com/rednex/rgbds && cd rgbds && make install && cd ..
