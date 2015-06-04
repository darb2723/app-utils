#!/bin/bash

TARGET="$1"

ssh-copy-id "$TARGET"
scp /etc/sysconfig/selinux "$TARGET":/etc/sysconfig/
scp /etc/profile.d/custom.sh "$TARGET":/etc/profile.d

exit
