#!/usr/bin/env bash

ROOT_DIR=$( cd $( dirname ${BASH_SOURCE:-$0} ) && pwd )

help() {
    cat << HELP
 Usage: $0 [options...] <arg>

 Options
    -h                show this help
    -f <file>         use a specific file
HELP
    exit 0
}

while getopts "f:h" OPT
do
    case $OPT in
        f) OPT_FILE="$OPTARG" ;;
        h) help ;;
        *) exit ;;
    esac
done

shift $(( OPTIND - 1 ));

