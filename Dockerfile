FROM ubuntu:22.04
RUN apt-get update && apt-get install -y curl unzip
RUN curl -L https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -o v2ray.zip
RUN unzip v2ray.zip -d /v2ray
COPY config.json /v2ray/config.json
EXPOSE 443
CMD ["/v2ray/v2ray", "run", "-config", "/v2ray/config.json"]
