FROM mcr.microsoft.com/dotnet/core/runtime:2.2 AS Final

RUN apt-get update && apt-get install -y screen \
    libleveldb-dev \
    sqlite \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /neo-cli
COPY neo-cli .
COPY configs .

ENTRYPOINT ["/neo-cli/start.sh" ]
