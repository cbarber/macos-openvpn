Build the docker image and start a new `vpn` container pointed at the directory holding your ovpn and ovpn12 files (replace `/home/cbarber/.config/ovpn`):
```
docker build . -t macos-openvpn
docker run -it --cap-add=NET_ADMIN --name vpn -v /home/cbarber/.config/ovpn:/vpn -d macos-openvpn
docker exec -it vpn /bin/bash
```

You will now be in a terminal in the container connected to the VPN:
```
bash-5.0# ssh oscc@10.1.10.4
The authenticity of host '10.1.10.4 (10.1.10.4)' can't be established.
ED25519 key fingerprint is SHA256:VAqr78WvORWtYZ9mY2IXPUfV1Kcvl29VcB1FqUTh/90.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '10.1.10.4' (ED25519) to the list of known hosts.
Password: 
Last login: Tue Feb  2 16:30:56 2021 from 172.24.42.3

[oscc@oscc:~]$ 
```
