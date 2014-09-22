#!/bin/bash

a='string.txt'
b=$(< $a)
c=$(echo $b | tr ' ' '\n')

echo "$c" > block.txt # unique name and mapping

# #!clear $VARS

a='string.txt'
#b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*' | tr -s '.' | tr -s '.' ' ')
#b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*' | tr -s '.' | tr '.' '\n' | sed /^$/d)
b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*' | tr -s '.' | tr '.' '\n')

echo "$b"
#IFS=$'\n' read -d '' -r -a c < <(echo "$b")
#echo "${c[@]}"
