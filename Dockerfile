FROM pandoc/core:2.14.0.1

RUN apk add bash vim neovim

# Copies your code file  repository to the filesystem
COPY entrypoint.sh /entrypoint.sh
COPY scripts/include-files.lua /scripts/include-files.lua
COPY scripts/panvimdoc.lua /scripts/panvimdoc.lua

# change permission to execute the script and
RUN chmod +x /entrypoint.sh

# file to execute when the docker container starts up
ENTRYPOINT ["/entrypoint.sh"]
