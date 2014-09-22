## input may have a mark appended by output. determine where it happens and when this is a string or a block
 # exist? tr on input or output

# mark not $1
if [[ "$1" == '*' ]]; then
  mark='|'
else
  mark='*'
fi

while read line
do
  a=$(echo "$line" | tr -d "$mark" | wc -m)
  echo "$a" >> `date +%s.%N`
done
