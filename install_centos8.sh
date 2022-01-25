#!/usr/bin/env bash

dnf check-update
dnf upgrade

dnf update -y
< packages.txt xargs dnf install -y
