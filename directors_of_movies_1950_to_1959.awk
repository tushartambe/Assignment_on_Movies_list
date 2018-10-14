#! /usr/bin/awk

BEGIN{
  FS="|"
  director=""
};

($2 >= 1950 && $2 <=1959){
  print $6
};

END{
};
