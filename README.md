### Use Cloudflare Warp inside a Docker Container
Based on debian:stable-slim, use this image as you would debian:stable-slim

usage:
```Shell
docker run \
    --cap-add NET_ADMIN \
    --sysctl net.ipv4.conf.all.src_valid_mark=1 \
    -v /dev/net/tun:/dev/net/tun:ro \
    -v /run/dbus/system_bus_socket:/run/dbus/system_bus_socket:ro \
    -it ethanscully/warp
```
