#!/bin/bash

a='string.txt'
b=$(< $a)
c=$(echo $b | tr ' ' '\n')

echo "$c" > block.txt

# #!clear $VARS

a='string.txt'
#b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*' | tr -s '.' | tr -s '.' ' ')
b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*' | tr -s '.' | tr '.' '\n' | sed /^$/d)
IFS=$'\n' read -d '' -r -a c < <(echo "$b")

echo "$b"
#echo "${c[@]}"
