#!/bin/bash
safe_asterisk

ln -s /tmp/lua-dialplan/ /usr/local/lib/lua/5.1/dialplan

sleep 1

asterisk -rvvvvvvv