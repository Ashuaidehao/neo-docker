# neo docker

## Prerequisites

You need install [Git](https://git-scm.com/download/) and [Docker](https://docs.docker.com/install/) .

## Usage

### Build and run docker


```sh

git clone https://github.com/Ashuaidehao/neo-docker.git
cd neo-docker
docker build -t neo-cli .
docker run --name=neo-cli -dit -p 10332-10333:10332-10333 neo-cli

```

After start the docker container successfully, use the following scripts to enter neo-cli interactive window:

```sh

docker exec -it neo-cli /bin/bash
screen -r node

```

## Introductions

By default, this docker only contains *SimplePolicy* and *ImportBlocks* plugins.
It use the [config.json](https://github.com/Ashuaidehao/neo-docker/blob/master/configs/config.json) to start neo-cli, which mean the p2p port is 10333 and rpc port is 10332. If you don't want to open rpc port, just use the following script to run it:

```sh
docker run --name=neo-cli -dit -p 10333:10333 neo-cli
```
## Build your custom docker image

Before build docker image, you can put your own config files("config.json","protocal.json","your-wallet.json","your-wallet.db3" etc.) into the directory "configs", then they will overwrite the default file of neo-cli.
