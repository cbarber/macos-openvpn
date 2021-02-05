FROM dperson/openvpn-client

RUN apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add openssh
