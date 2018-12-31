FROM fedora:29
RUN rpm --quiet --import https://s3.amazonaws.com/download.draios.com/DRAIOS-GPG-KEY.public
RUN curl -s -o /etc/yum.repos.d/draios.repo https://s3.amazonaws.com/download.draios.com/stable/rpm/draios.repo
RUN dnf update -y
RUN dnf install --setopt=install_weak_deps=False --best -y \
  atop \
  bcc \
  blktrace \
  bpftool \
  bind-utils \
  bridge-utils \
  curl \
  dstat \
  ethtool \
  fd-find \
  fish \
  frysk \
  fzf \
  gdb \
  git \
  htop \
  iftop \
  iotop \
  iperf \
  kernel-tools \
  less \
  lldpad \
  lsof \
  ltrace \
  lttng-tools \
  man-db \
  mtr \
  nano \
  net-snmp-utils \
  net-tools \
  nicstat \
  nmap \
  nmap-ncat \
  numactl \
  perf \
  procps-ng \
  ripgrep \
  strace \
  sysdig \
  sysfsutils \
  sysstat \
  task \
  tcpdump \
  tiptop \
  vim \
  vit \
  wget \
  zsh
