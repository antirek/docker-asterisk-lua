# docker-astolua

Docker container with asterisk and lua environment


### asterisk 1.8

> docker pull antirek/astolua:asterisk1.8

### asterisk 11

> docker pull antirek/astolua:asterisk11

> docker pull antirek/astolua:latest

### asterisk 13

> docker pull antirek/astolua:asterisk13


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

