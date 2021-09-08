FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS Final

RUN apt-get update && apt-get install -y screen \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /neo-cli
COPY neo-cli-n3 .
RUN chmod +x start.sh

ENTRYPOINT ["/neo-cli/start.sh" ]
