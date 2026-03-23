FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY build_output/cfst_linux_amd64 /cfst
COPY ip.txt /ip.txt
COPY ipv6.txt /ipv6.txt
ENTRYPOINT ["/cfst"]
