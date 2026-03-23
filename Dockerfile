FROM scratch
COPY build_output/cfst_linux_amd64 /cfst
ENTRYPOINT ["/cfst"]
