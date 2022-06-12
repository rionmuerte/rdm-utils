#!/usr/bin/env bash

query="https://duckduckgo.com/?q=define"

while [[ $# -gt 0 ]]
do
    query+="+${1// /+}"
    shift
done

xdg-open "$query"
