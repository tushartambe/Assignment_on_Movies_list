#! /usr/bin/awk

BEGIN{
  FS="|"
  movie=""
  longest_time=0
  time=0
};

($4 !~ "N/A"){
  time=substr($4, 1,length($4)-4)
  if(time+0 > longest_time+0 ){
   # print "I m here"
    longest_time=time
    movie=$1
   # time_arr=longest_time" "longest_time
  }
   #print longest_time
};
END{
  print movie "," longest_time 
};
