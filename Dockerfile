FROM debian:stretch

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
      build-essential \
      openjdk-8-jre-headless \
      vim-nox tmux tree mosh ssh bash-completion rsync curl \
      sysfsutils info htop \
    && rm -rf /var/cache/apt
