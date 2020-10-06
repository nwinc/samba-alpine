FROM alpine:3.12
MAINTAINER Run Zheng <zhgrun.d@gmail.com>

RUN sed -i s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g /etc/apk/repositories && \
	apk add --no-cache samba \
				samba-common-tools

COPY smb.conf /etc/samba/smb.conf
VOLUME /share

EXPOSE 139 445

CMD ["/usr/sbin/smbd -F --no-process-group"]

ENTRYPOINT ["/bin/sh", "-c"]

