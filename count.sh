I=0
while read line
do
  #a=$(echo "$line" | tr -d "$mark" | wc -m)
  a=$(echo "$line" | tr -d "$mark" | tr -d '\n' | wc -m)   # tr -d '\n' | removes mark | appended by | ./mark.sh out | expanding line | into paragraph
                                                                                                   # | output from | ./mark.sh in  ## output pushes mark forward
                                                                                                     # out expands to (in)put on ./mark.sh
  mkdir -p ./out/count/$I
  echo "$a" >> "./out/count/$I/`date +%s.%N`"
  echo "$a"

  I=$((I+1))
done

