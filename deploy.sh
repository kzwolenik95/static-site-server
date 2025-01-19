#!/usr/bin/env bash
echo "Deploying $(ls site_files/* | xargs) to $1 server"
rsync site_files/* ubuntu@"$1":/var/www/html