#!/bin/bash
# Copyright 2015, 2016 Felix Wolfsteller
# Released under the GPL

# Create 7linden-at-home**.deb package

fpm -s dir\
    -t deb\
    -v `cat VERSION`\
    -a all\
    --name "7linden-at-home"\
    --description "Find out whether we are in 7 Linden"\
    --directories opt/7linden-at-home\
    --depends bash\
    --depends openssh-client\
    --depends diffutils\
    --license "GPLv3+"\
    --maintainer "felix.wolfsteller@gmail.com"\
    opt
