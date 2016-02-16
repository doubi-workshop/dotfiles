#!/bin/bash
echo "backup vm files to pc"
echo ""

if [[ $# -ne 1 ]]; then
    echo "usage: "
    echo "  [server_name] -> backup server dotfiles folder"
fi

rsync -avzh --update -e ssh --exclude='*/.git*' \
            --exclude='*/vimfiles/bundle*'  --exclude='*.swp' \
            $1:${HOME}/dotfiles /cygdrive/e/Cloud/
