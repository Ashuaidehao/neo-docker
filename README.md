# neo-docker

## Prerequisites

You need install [git](https://git-scm.com/download/) and [Docker](https://docs.docker.com/install/) .

## Usage

### build and run docker


'''sh

git clone https://github.com/Ashuaidehao/neo-docker.git
cd neo-docker
docker build -t neo-cli .
docker run --name=neo-cli -dit -p 10332-10333:10332-10333 neo-cli

'''

After start the docker container successfully ,you can use the following scripts to enter neo-cli interactive window:

'''sh

docker exec -it neo-cli /bin/bash
screen -r node

'''

## build your custom docker image

