FROM rancher/k3s:latest
EXPOSE 80 443
COPY cape-install.yaml /var/lib/rancher/k3s/server/manifests/
ENTRYPOINT ["/bin/k3s"]
CMD ["server"]
