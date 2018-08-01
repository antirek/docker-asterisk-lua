# docker-asterisk-lua

Closed

see

[asterisk11-lua](https://github.com/antirek/docker-asterisk11-lua)

[asterisk13-lua](https://github.com/antirek/docker-asterisk13-lua)

[asterisk15-lua](https://github.com/antirek/docker-asterisk15-lua)



Docker container with asterisk and lua environment

[![](https://images.microbadger.com/badges/image/antirek/asterisk-lua.svg)](https://microbadger.com/images/antirek/asterisk-lua "Get your own image badge on microbadger.com")

### asterisk 1.8

> docker pull antirek/asterisk-lua:asterisk1.8

### asterisk 11

> docker pull antirek/asterisk-lua:asterisk11

> docker pull antirek/asterisk-lua:latest

### asterisk 13

> docker pull antirek/asterisk-lua:asterisk13


(attention: traffic ~ 600Mb download)


## Contain

- [Asterisk](http://www.asterisk.org/)

- [Lua 5.1](http://www.lua.org/)

- [luarocks](https://luarocks.org/)

- [mongodb driver for lua](https://github.com/moai/luamongo)

- [g729](http://asterisk.hosting.lv/)



## Run

See ./run


## Extend

Use this image as base for your own images

Write Dockerfile like

`````

FROM antirek/asterisk-lua

RUN luarocks install inspect


... and other instructions

`````




## Thanks

[docker-lua](https://github.com/niaquinto/docker-lua)

[docker-asterisk](https://github.com/dougbtv/docker-asterisk)

