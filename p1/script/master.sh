#!/bin/sh

export INSTALL_K3S_EXEC=""
export K3S_URL=""
export K3S_TOKEN=""

curl -sfL https://get.k3s.io | $INSTALL_K3S_EXEC sh -