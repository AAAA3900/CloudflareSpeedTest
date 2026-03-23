# 使用最简空镜像
FROM scratch

# 1. 把提前准备好的根证书放进容器，解锁 HTTPS 能力！
COPY build_output/ca-certificates.crt /etc/ssl/certs/

# 2. 拷贝静态编译好的二进制文件
COPY build_output/cfst_linux_amd64 /cfst
COPY ip.txt /ip.txt
COPY ipv6.txt /ipv6.txt

# 3. 设置启动入口
ENTRYPOINT ["/cfst"]
