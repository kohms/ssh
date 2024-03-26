#!/bin/bash
SSH_FILE=~/.ssh/authorized_keys
echo "Old authorized_keys"
mkdir -p ~/.ssh
touch ${SSH_FILE}
cat ${SSH_FILE}
set -e
echo "Download keys"
curl https://raw.githubusercontent.com/kohms/ssh/main/default > ${SSH_FILE}
chmod 600 ${SSH_FILE}
echo "New authorized_keys"
cat ${SSH_FILE}
