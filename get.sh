#!/bin/sh

version=${1}
dir="$GOPATH/pkg/mod/github.com/!kirill!bogatikov/m@${version}"

rm -rf ${dir}
mkdir ${dir} && cd ${dir} && \
git init && \
git remote add origin https://github.com/KirillBogatikov/m.git && \
git branch -m main && \
git pull origin main && \
git submodule update --init --recursive && \
find ./ -name '.git' -print0 | xargs -0 rm -rf -- && \
find ./ -name '.gitmodules' -print0 | xargs -0 rm -rf -- && \
find ./**/* -name 'go.*' -print0 | xargs -0 rm -rf -- && \
rm -rf get.sh
