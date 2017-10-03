FROM debian:stretch

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
      python2.7 \
      locales \
      build-essential \
      openjdk-8-jre-headless \
      vim-nox tmux tree mosh ssh bash-completion rsync curl \
      sysfsutils info htop \
    && rm -rf /var/cache/apt /var/apt/lists/ \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && update-ca-certificates -f

ENV LANG en_US.UTF-8
