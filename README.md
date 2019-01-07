# frp

```
$ cd ~
$ git clone https://github.com/hbstarjason/frp
$ docker run -itd -v ~/frp/frps.ini:/var/frp/conf/frps.ini -p 7000:7000 -p 80:80 -p 443:443 -p 7500:7500 hbstarjason/frp
```
htpp://ip:7500 
admin/admin
