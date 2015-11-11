#!/bin/bash
echo "backup vm files to pc"
echo ""

rsync -avzh --update -e ssh ${server}:/home/zhangkang-pd/dotfiles /cygdrive/e/Cloud/
