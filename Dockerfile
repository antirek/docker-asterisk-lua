FROM ubuntu:14.04

ENV LUA_HASH 913fdb32207046b273fdb17aad70be13
ENV LUA_MAJOR_VERSION 5.2
ENV LUA_MINOR_VERSION 4
ENV LUA_VERSION ${LUA_MAJOR_VERSION}.${LUA_MINOR_VERSION}

RUN apt-get update && \
    apt-get install -y build-essential zip unzip libreadline-dev && \
    apt-get clean

RUN apt-get install -y curl

RUN mkdir /usr/bin/lua && \
    cd /usr/bin/lua && \
    echo "${LUA_HASH}  lua-${LUA_VERSION}.tar.gz" > lua-${LUA_VERSION}.md5 && \
    curl -R -O http://www.lua.org/ftp/lua-${LUA_VERSION}.tar.gz && \
    md5sum -c lua-${LUA_VERSION}.md5 && \
    tar zxf lua-${LUA_VERSION}.tar.gz && \
    cd lua-${LUA_VERSION} && \
    make linux test && make install && \
    cd .. && rm -rf *.tar.gz *.md5 lua-${LUA_VERSION}

#CMD ["/usr/local/bin/lua"]

# RUN apt-get install -y mercurial linux-headers-`uname -r`

# RUN apt-get install -y linux-headers libxml2 sqlite openssl  xinetd tar

RUN curl -sf -o /tmp/asterisk.tar.gz -L http://downloads.asterisk.org/pub/telephony/certified-asterisk/certified-asterisk-11.6-current.tar.gz

RUN mkdir /tmp/asterisk

RUN tar -xzf /tmp/asterisk.tar.gz -C /tmp/asterisk --strip-components=1

WORKDIR /tmp/asterisk

RUN apt-get install -y aptitude

RUN contrib/scripts/install_prereq install

# RUN ./configure --libdir=/usr/lib64 1> /dev/null

# Remove the native build option
# RUN make menuselect.makeopts
# RUN sed -i "s/BUILD_NATIVE//" menuselect.makeopts

# Continue with a standard make.
# RUN make 1> /dev/null
# RUN make install 1> /dev/null