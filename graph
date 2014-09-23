# mark not $1
if [[ "$1" == '*' ]]; then
  mark='|'
else
  mark='*'
fi

read -a a
b=$(echo "$a" | tr -s '.' | tr '.' '\n') # collapse and rename

while read line
do
  a=$(echo "$line" | tr -d "$mark")
  #mkdir -p $line
  #echo "$a" >> "$line\`date +%s.%N`"
  echo "$a"
done < <(echo "$b")
