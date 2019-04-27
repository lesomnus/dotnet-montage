#!/usr/bin/env bash

workspace=$(dirname $0)
imageRef=dotnet-montage:latest

cd $workspace

docker build -t $imageRef .
