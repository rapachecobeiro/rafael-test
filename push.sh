#!/bin/bash

cp bin/provisioning-cli .

./provisioning-cli config set-token $PUSH_TOKEN
./provisioning-cli config set-api provisioning.platform.manulife.io
./provisioning-cli config initInteractiveApproval

./provisioning-cli app push \
    --appName "hello-actions" \
    --manifestFileName 'manifest.yml' \
    --framework "node" \
    --sourcePath "." \
    --org "GSD-CAC-DEV" \
    --space "GEES-CAC-DEV" \
    --foundation "CAC" \
    --routes "hello-actions.apps.cac.preview.pcf.manulife.com" \
    --approvalApi "enterprise-pipeline-approval.platform.manulife.io" \
    --teamEmail "Rafael_Ribeiro@manulife.com"

rm package.zip