# docker-astolua

Docker container with asterisk and lua environment

Contain

- Asterisk 11.20 [http://www.asterisk.org/]

- Lua 5.1 [http://www.lua.org/]

- luarocks [https://luarocks.org/]

- mongodb driver for lua [https://github.com/moai/luamongo]



## Pull

> docker pull antirek/astolua

(attention: traffic ~ 600Mb download)



## Run

> docker run \
>   -v /etc/asterisk:/etc/asterisk \
>   --net=host \
>   -i -t antirek/astolua



## Extend

Use this image as base for your own images

Write Dockerfile like

`````

FROM antirek/astolua

RUN luarocks install inspect


`````


## Thanks

docker-lua https://github.com/niaquinto/docker-lua

docker-asterisk https://github.com/dougbtv/docker-asterisk