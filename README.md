# Neo Docker Image

It already contains *ApplicationLogs*, *ImportBlocks*, *RpcSecurity*, *RpcWallet* and *SimplePolicy* plugins.

* NEO3 Image: **ashuaidehao/n3-cli**
* NEO2 Image: **ashuaidehao/neo-cli**

----
## N3 Usage

### Open RpcServer
```sh
docker run --name=neo-cli -dit -p 10332-10334:10332-10334 ashuaidehao/n3-cli
```

### Open Node Only
```sh
docker run --name=neo-cli -dit -p 10333:10333 ashuaidehao/n3-cli
```

### Connect to test net
You need prepare test net config files(config.testnet.json) first, then use :
```sh
docker run -dit --name neo-cli -p 20332-20334:20332-20334 -v {Physical Absolute Directory}/config.testnet.json:/neo-cli/config.json ashuaidehao/n3-cli
```


### Install Plugins
If you want to install other plugins, use these scripts after you start this container:
```sh
docker exec -it neo-cli /bin/bash
screen -r node
neo>install {PluginName}
```
Then restart this container.


----

## NEO2 Usage
### Connect to test net
You need prepare test net config files(config.testnet.json and protocol.testnet.json) first, then use :
```sh
docker run -dit --name neo-cli -p 20332-20334:20332-20334 -v {Physical Absolute Directory}/config.testnet.json:/neo-cli/config.json -v {Physical Absolute Directory}/protocol.testnet.json:/neo-cli/protocol.json ashuaidehao/neo-cli
```

### Accelerate Sync blocks
If you want to use *ImportBlocks* to accelerate block chain sync (https://sync.ngd.network/), use this command to start it:
```sh
docker run -dit --name neo-cli -p 10332-10333:10332-10333 -v {Physical Absolute Directory}/chain.acc:/neo-cli/chain.acc ashuaidehao/neo-cli
```

----

## Build Your Own Docker Image

### Prerequisites
You need install [Git](https://git-scm.com/download/) and [Docker](https://docs.docker.com/install/).

### Build and Run

```sh
git clone https://github.com/Ashuaidehao/neo-docker.git
cd neo-docker
docker build -t n3-cli .
docker run --name=neo-cli -dit -p 10332-10334:10332-10334 n3-cli
```

After start the docker container successfully, use the following scripts to enter neo-cli interactive window:

```sh
docker exec -it neo-cli /bin/bash
screen -r node
```

### Customize Docker Image
Before build docker image, you can put your own config files("config.json","protocal.json","your-wallet.json","your-wallet.db3" etc.) into the directory "configs", then they will overwrite the default file of neo-cli.
