#!/bin/sh

version=${1}
cd "$GOPATH/pkg/mod/github.com/!kirill!bogatikov/m@${version}"
git init
git remote add origin https://github.com/KirillBogatikov/m.git
git branch -m main
find ./ -not -name '.git' -print0 | xargs -0 rm --
git pull origin main
git submodule update --init --recursive