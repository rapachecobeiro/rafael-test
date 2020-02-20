#!/bin/bash

provisioning-cli app push \
    --appName "hello-actions" \
    --manifestFileName 'manifest.yml' \
    --framework "node" \
    --routes "hello-actions.apps.cac.pcf.manulife.com"