# M
## golang packages monorepo via git submodules

- Add new submodule:
`git submodule add <remote>`

- Get monorepo to local machine
```
go get github.com/KirillBogatikov/m@<version>
get.sh <version>
```

- Build app
```
go mod vendor
go build -buildvcs=false
```

## example
[github](https://github.com/KirillBogatikov/golang-app)
