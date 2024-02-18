FROM --platform=linux/amd64 swift:5.9.2-jammy

ENV WORK_DIR /
WORKDIR ${WORK_DIR}

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    binutils \
    curl \
    dirmngr \
    git \
    gnupg2 \
    libc6-dev \
    libcurl4-openssl-dev \
    libedit2 \
    libgcc-9-dev \
    libjemalloc-dev \
    libsqlite3-0 \
    libsqlite3-dev \
    libssl-dev \
    libstdc++-9-dev \
    libxml2 \
    libxml2-dev \
    libz3-dev \
    openssl \
    pkg-config \
    sqlite3 \
    tzdata \
    unzip \
    xz-utils \
    zlib1g-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
