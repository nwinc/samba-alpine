# samba-alpine
This is a simple docker image with samba running on alpine linux. It provides a solution for networking file sharing between TV, smart phone, raspi and laptop etc.

## Configure
Update the example config file `smb.conf` as you like, such as samba account name, share name and path.

To be compatible to old clients which doesn't support SMBv2+, the server is configured to support SMBv1 `server min protocol = NT1` in `smb.conf`. Please change to higher protocol version if you take care of potential security issues.

## Build
```
docker build -t samba-alpine .
```

## Install and Running
Replace your own sharing path on your host below,
```
docker run -it -d -p 139:139 -p 445:445 -v <HOST_SHARING_PATH>:/share samba-alpine
```
