#!/bin/bash
#
# This build script currently only address MacOS intel
#
rm -rf lfs-folderstore-darwin
mkdir lfs-folderstore-darwin
pushd lfs-folderstore-darwin
export GOOS=darwin
export GOARCH=amd64
go build -ldflags "-X github.com/dirkhusemann/lfs-folderstore/cmd.Version=1.0.0" github.com/dirkhusemann/lfs-folderstore
popd
