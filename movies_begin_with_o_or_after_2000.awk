#! /usr/bin/awk

BEGIN{
  FS="|"
}

($1 ~ /^O/ || $2 > 2000){
  print $1 "," $2
}
END{
  }
