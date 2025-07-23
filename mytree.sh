#!/bin/bash
list_files() {
    for item in *; do
        [ -e "$item" ] || continue
        depth=$(echo $1 | sed 's/[^ ]//g')
        echo -n "${depth// /    }"
        if [ -d "$item" ]; then
            echo "└── $item/"
            (cd "$item" && list_files "$1    ")
        else
            echo "└── $item"
        fi
    done
}
list_files ""
