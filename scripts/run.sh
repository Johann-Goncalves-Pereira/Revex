#!/bin/bash

echo "Running..."
cd run/ || exit 1
ln -sf ../node_modules node_modules
/usr/local/bin/yarn dev
