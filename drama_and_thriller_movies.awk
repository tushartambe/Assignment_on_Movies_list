#! /usr/bin/awk

BEGIN{
  FS="|"
  count=0
};

($5 ~ "Drama" && $5 ~ "Thriller"){
  count+=1
};

END{
  print count
};
