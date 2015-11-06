#!/bin/bash


for server in dev1 dev2 vm gpu1 gpu2 gpu3 gpu4
do
    echo "copy to server: ${server}"
    scp -rv /cygdrive/e/Cloud/dotfiles ${server}:/home/zhangkang-pd/
done

