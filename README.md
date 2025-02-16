
## Alibaba Cloud Linux 3 (Alinux3) 操作系统

alinux3 版本 3.9

增加基本命令：

* procps-ng - ps, top, uptime, w, free
* iputils - ping
* net-tools - ifconfig, netstat, route, arp
* 压缩工具 - zip, tar, xz
* dumb-init - docker 运行命令初始化系统

本地构建命令
```bash
# sh build.sh <tag-version>
# sh build.sh latest
sh build.sh 3.9
```
