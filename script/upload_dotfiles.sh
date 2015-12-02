#!/bin/bash
echo "upload dotfiles to remote server"
echo ""

if [[ $# -lt 1 ]]; then
    echo "usage: "
    echo "  all -> upload all servers"
    echo "  [server_name] -> upload to one server name"
fi

if [[ "$1" == "all" ]]; then
    for server in dev1 dev2 vm gpu1 gpu2 gpu3 gpu4
    do
        echo "copy to server: ${server}"
        rsync -avzh --delete --exclude='*/.git*' \
            --exclude='*/vimfiles/bundle*'  --exclude='*.swp' \
            /cygdrive/e/Cloud/dotfiles -e ssh ${server}:/home/zhangkang-pd/
    done
else
    for server in $@
    do
        echo "copy to server ${server}"
        rsync -avzh --delete --exclude='*/.git*' \
            --exclude='*/vimfiles/bundle*'  --exclude='*.swp' \
            /cygdrive/e/Cloud/dotfiles -e ssh ${server}:/home/zhangkang-pd/
    done
fi
