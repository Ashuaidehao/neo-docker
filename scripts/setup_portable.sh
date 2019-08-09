#!/bin/bash
#

NEO_CLI_VERSION=$1
echo $NEO_CLI_VERSION

# if [ $2 = "portable" ];then
# echo "p"
# else
# echo "nop"
# fi
# wget https://github.com/neo-project/neo-cli/releases/download/v$NEO_CLI_VERSION/neo-cli-linux-x64.zip
# unzip neo-cli-linux-x64.zip

./install_plugins.sh $NEO_CLI_VERSION

