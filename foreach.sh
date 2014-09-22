while read line
do
  #echo "$line" | tr -d '*' | sed /^$/d | wc -m
  echo "$line" | wc -m
done
