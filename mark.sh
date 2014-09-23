#!/bin/bash

O='./out/block.txt'

a='./in/string.txt'
b=$(< $a)
c=$(echo $b | tr ' ' '\n')

echo "$c" > $O # unique name and mapping

# #!clear $VARS

a='./in/string.txt'  ## match
#b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*' | tr -s '.' | tr -s '.' ' ')
#b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*' | tr -s '.' | tr '.' '\n' | sed /^$/d)
#b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*' | tr -s '.' | tr '.' '\n')
#b=$(cat $a | tr [:blank:] '|' | tr '\n' '*') #reduced to expand (mark.sh | count.sh) into (mark.sh | graph | count.sh)

b=$(cat $a | tr [:graph:] '.' | tr [:blank:] '|' | tr '\n' '*') # [:graph:] needed to transform before addition, unless addition is readable or guessed

echo "$b"
#IFS=$'\n' read -d '' -r -a c < <(echo "$b")
#echo "${c[@]}"
