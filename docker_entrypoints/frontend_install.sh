#!/bin/bash

. /etc/init.d/common.sh
echo "Building new app"
go install github.com/dmatusiewicz/frontend
