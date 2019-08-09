FROM ubuntu:19.10 AS Build

RUN apt-get update && apt-get install -y wget \
    unzip

WORKDIR /app
COPY scripts .
RUN /bin/bash setup.sh


FROM mcr.microsoft.com/dotnet/core/runtime:2.2 AS Final
RUN apt-get update && apt-get install -y \
  screen \
  libleveldb-dev \
  sqlite3
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /neo-cli
COPY  --from=Build /app/neo-cli .
COPY configs .

 ENTRYPOINT ["screen","-DmS","node","dotnet","neo-cli.dll","-r"]
