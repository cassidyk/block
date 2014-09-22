## input may have a mark appended by output. determine where it happens and when this is a string or a block

while read line
do
  a=$(echo "$line" | tr -d '*' | wc -m)
  echo "$a" >> `date +%s.%N`
done
