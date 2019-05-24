#!/bin/bash

# TODO Require ssh-agent, spawn and expect commands to be installed on the host
# TODO Require eval $(ssh-agent)

if [ $# -ne 2 ] ; then
  echo "Usage: ssh-add-keyfile-passphrase keyfile passphrase"
  exit 1
fi

_MY_PASSPHRASE_=$(echo $2)

expect << EOF
  spawn ssh-add $1
  expect "Enter passphrase for $1"
  send "$_MY_PASSPHRASE_\r"
  expect eof
EOF

ssh-add -l
