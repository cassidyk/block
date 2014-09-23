while read line
do
  #a=$(echo "$line" | tr -d "$mark" | wc -m)
  a=$(echo "$line" | tr -d "$mark" | tr -d '\n' | wc -m) # tr -d '\n' | removes mark | appended by | ./mark.sh out | expanding line | into paragraph
                                                                                                 # | output from | ./mark.sh in
                                                                                                     # out expands to (in)put on ./mark.sh
  #echo "$a" >> `date +%s.%N`
  echo "$a"
done
