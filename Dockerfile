FROM debian:bullseye-slim
MAINTAINER Spectrum IM Developers <developers@spectrum.im>
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        nginx-light \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
