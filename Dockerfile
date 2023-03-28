FROM harbor.containers.wurnet.nl/proxy-cache/pandoc/latex:2.19.2-alpine@sha256:cc0228f2e6552683502692281bc2c0624ef3be175886ddd0279c2b9bfeb8c95a as build

COPY . .
WORKDIR /data/doc
RUN  chmod +x compile.sh &&  sh compile.sh html
# --- end of build ---
FROM harbor.containers.wurnet.nl/proxy-cache/bitnami/nginx:1.22.1-debian-11-r31@sha256:998a477a61241f97f2a532e2669261328b978c37f8c82a9e8f4f63df337601de

COPY --from=build /data/public/ /app
USER 1001
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]