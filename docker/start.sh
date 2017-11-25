#!/bin/bash

echo "Start installing python and all"

virtualenv -p python2.7 ~/.synapse
source ~/.synapse/bin/activate
pip install --upgrade pip
pip install --upgrade setuptools
pip install https://github.com/matrix-org/synapse/tarball/develop

cd ~/.synapse
python -m synapse.app.homeserver \
    --server-name riot-dev.tenx.tech \
    --config-path homeserver.yaml \
    --generate-config \
    --report-stats=yes


echo "Start installing and start synapse"
source ~/.synapse/bin/activate
synctl start # if not already running