# docker-astolua

Docker container with asterisk and lua environment


### redbox - asterisk 1.8

> docker pull antirek/astolua:redbox

### bluebox - asterisk 11

> docker pull antirek/astolua:bluebox

> docker pull antirek/astolua:latest

### blackbox - asterisk 13

> docker pull antirek/astolua:blackbox

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

(Usage sample)[http://github.com/antirek/docker-astolua-sample]

Use this image as base for your own images

Write Dockerfile like

`````

FROM antirek/astolua

RUN luarocks install inspect


... and other instructions

`````




## Thanks

[docker-lua](https://github.com/niaquinto/docker-lua)

[docker-asterisk](https://github.com/dougbtv/docker-asterisk)

