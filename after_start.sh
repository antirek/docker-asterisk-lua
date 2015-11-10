#!/bin/bash
/etc/init.d/asterisk start

ln -s /tmp/lua-dialplan/ /usr/local/lib/lua/5.1/dialplan
