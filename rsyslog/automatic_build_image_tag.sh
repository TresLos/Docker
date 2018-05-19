#!/bin/bash

img="test_manual"
tag=$(docker image ls | awk -v max=0 '/test_manual/ {if($2>max){max=$2}}END{print max+1}')

echo "img: ${img}"
echo "tag: ${tag}"
echo "living img: $(docker image ls | grep ${img} | wc -l)"

set -x
docker build -t "${img}:${tag}" . 2>&1 | tee "build.${img}:${tag}.log"
echo "docker run --rm -ti \"${img}:${tag}\" ls"
