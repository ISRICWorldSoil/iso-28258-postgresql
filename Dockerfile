FROM harbor.containers.wurnet.nl/proxy-cache/bitnami/nginx:1.22.1-debian-11-r31@sha256:998a477a61241f97f2a532e2669261328b978c37f8c82a9e8f4f63df337601de

USER 0

# Install Pandoc
RUN apt-get update && \
    apt-get install -y wget && \
    wget -c https://github.com/jgm/pandoc/releases/download/2.13/pandoc-2.13-1-amd64.deb && \
    apt-get install -y ./pandoc-2.13-1-amd64.deb && \
    apt-get autopurge pandoc-data

# Install Pandoc Crossref
RUN apt-get install xz-utils && \
    wget -c https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.10.0a/pandoc-crossref-Linux.tar.xz && \
    tar -xf pandoc-crossref-Linux.tar.xz && \
    mv pandoc-crossref /usr/local/bin/ && \
    chmod a+x /usr/local/bin/pandoc-crossref && \
    mkdir -p /usr/local/man/man1 && \
    mv pandoc-crossref.1 /usr/local/man/man1

# Install curl
RUN apt-get update && apt-get install -y curl

# Download and run copy_templates.sh script
RUN curl 'https://raw.githubusercontent.com/ryangrose/easy-pandoc-templates/master/copy_templates.sh' | bash

COPY doc /app

COPY public /app

WORKDIR /app

RUN ./compile.sh html

USER 1001

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]


