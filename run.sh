#!/bin/bash


echo "Passing - bun and npx on arm64 (when run from mac haven't tested other systems)"
echo "---- NPM -----"
docker build -t weirdtest --platform linux/arm64 -f Dockerfile.npm .
echo "---- Bun -----"
docker build -t weirdtest --platform linux/arm64 -f Dockerfile.bun .
echo "Passing npm but not bun on amd64 (when run from mac haven't tested other systems)"
echo "---- NPM -----"
docker build -t weirdtest --platform linux/amd64 -f Dockerfile.npm .
echo "---- Bun -----"
docker build -t weirdtest --platform linux/amd64 -f Dockerfile.bun .
