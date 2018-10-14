#! /usr/bin/awk

BEGIN{
  FS="|"
count=0
};

($6 ~ "Martin Scorsese" && $7 ~ "Leonardo DiCaprio"){
  count+=1
  print $1
};

END{
  print "Total =" count
};
