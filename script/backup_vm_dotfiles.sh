#!/bin/bash
echo "backup vm files to pc"
echo ""

rsync -avzh --update -e ssh vm:${HOME}/dotfiles /cygdrive/e/Cloud/
