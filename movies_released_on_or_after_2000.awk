#! /usr/bin/awk

BEGIN{
  FS="|"
  count=0
};

($2 >= 2000 ){
  count+=1
};

END{
  print count
};
