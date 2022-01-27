#!/usr/bin/env bash

set -ueo pipefail
set -x

dnf check-update || true
dnf upgrade -y

dnf update -y
dnf install -y dnf-plugins-core
#dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
< packages.txt xargs dnf install -y


echo -e "\n DONE"
