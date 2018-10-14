#! /usr/bin/awk

BEGIN{
  FS="|"
};
($9 ~ "Hong Kong" && $10 ~"^8"){
  print $1
  print $10
};

END{
};
