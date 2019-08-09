#!/bin/bash
#

NEO_CLI_VERSION=2.10.2

wget https://github.com/neo-project/neo-cli/releases/download/v$NEO_CLI_VERSION/neo-cli-linux-x64.zip
unzip neo-cli-linux-x64.zip

wget https://github.com/neo-project/neo-plugins/releases/download/v$NEO_CLI_VERSION/SimplePolicy.zip
unzip -d neo-cli SimplePolicy.zip

wget https://github.com/neo-project/neo-plugins/releases/download/v$NEO_CLI_VERSION/ImportBlocks.zip
unzip -d neo-cli ImportBlocks.zip



# wget https://github.com/neo-project/neo-plugins/releases/download/v$NEO_CLI_VERSION/ApplicationLogs.zip
# unzip -d /app/neo-cli/ ApplicationLogs.zip

