#! /usr/bin/awk

BEGIN{
    count=0
    line=""
  }
(line !~$0){
count++
line=line" "$0
  }
END{
    print count
  }
