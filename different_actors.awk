#! /usr/bin/awk
BEGIN{
    FS="|"
    count=0
   # actor=$7 gsub(", ","\n")"\n"
  }
{
 # actor=$7 gsub(", ","\n")"\n"actor;
 gsub(", ","\n",$7)
 print $7
 # count+=1
}
END{
 # print actor 
 # print count
  }
