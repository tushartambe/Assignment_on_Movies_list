#! /usr/bin/awk

BEGIN{
  FS="|"
count=0
};

{
  a[$2]++;
};

END{
  for(i in a){
    print i" "a[i];
    if(a[i]>count){
        count=a[i];
      }
  }
  for(i in a){
      if(count==a[i]){
        print "Golden Year : "i" With Number of Movies : "count;
        }
    }
};
