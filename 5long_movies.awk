#! /usr/bin/awk

BEGIN{
  FS="|"
  time=0
};

($4 !~ "N/A"){
  time = int($4)  
  longest_timeStr=longest_timeStr"\n"time
  m1=$1
  movies_arr=movies_arr"\n"m1

};
END{

    split(longest_timeStr,longest_time,"\n")
    split(movies_arr,movies,"\n")
  for(i=1; i<=length(longest_time); i++)
  {
    for(j=i+1; j<=length(longest_time); j++)
    {
      if(int(longest_time[i]) > int(longest_time[j]))
      { 
        temp=longest_time[i]
        longest_time[i]=longest_time[j]
        longest_time[j]=temp

        temp=movies[i]
        movies[i]=movies[j]
        movies[j]=temp
        }
      }
    }
 for (i=length(longest_time)-4; i<=length(longest_time); i++)
   print longest_time[i]"--" movies[i]
};
