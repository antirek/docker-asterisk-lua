# docker-astolua

Docker container with asterisk and lua environment


redbox - asterisk 1.8
bluebox - asterisk 11
blackbox - asterisk 13


Contain

- Asterisk [http://www.asterisk.org/]

- Lua 5.1 [http://www.lua.org/]

- luarocks [https://luarocks.org/]

- mongodb driver for lua [https://github.com/moai/luamongo]



## Pull

> docker pull antirek/astolua

(attention: traffic ~ 600Mb download)



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

docker-lua https://github.com/niaquinto/docker-lua

docker-asterisk https://github.com/dougbtv/docker-asterisk