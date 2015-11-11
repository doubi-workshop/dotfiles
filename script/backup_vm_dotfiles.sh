#!/bin/bash
echo "backup vm files to pc"
echo ""

rsync -avzh --update -e ssh vm:/home/zhangkang-pd/dotfiles /cygdrive/e/Cloud/
