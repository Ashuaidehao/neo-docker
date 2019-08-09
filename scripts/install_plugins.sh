#!/bin/bash
#

NEO_CLI_VERSION=$1


wget https://github.com/neo-project/neo-plugins/releases/download/v$NEO_CLI_VERSION/SimplePolicy.zip
unzip -d neo-cli SimplePolicy.zip

wget https://github.com/neo-project/neo-plugins/releases/download/v$NEO_CLI_VERSION/ImportBlocks.zip
unzip -d neo-cli ImportBlocks.zip

wget https://github.com/neo-project/neo-plugins/releases/download/v$NEO_CLI_VERSION/ApplicationLogs.zip
unzip -d neo-cli ApplicationLogs.zip

wget https://github.com/neo-project/neo-plugins/releases/download/v$NEO_CLI_VERSION/RpcWallet.zip
unzip -d neo-cli RpcWallet.zip
