#! /usr/bin/awk

BEGIN{
  FS="|"
};
($8 ~ "Spanish" && $9 !~ "Spain"){
  print "YO" $1
};

END{
};
