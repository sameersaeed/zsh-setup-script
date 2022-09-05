#!/bin/bash

plgn=$1
thm=$2
exp=$3
src=$4

sed -i -e "s/\(plugins=\).*/\1$1/" \
-e "s/\(ZSH_THEME=\).*/\1$2/" \
-e "s/\(export \).*/\1$3/" \
-e "s/\(source \).*/\1$4/" rw
