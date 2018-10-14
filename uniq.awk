#! /usr/bin/awk
BEGIN{
     FS="|"

   };
($7 !~ "N/A"){ 
 split($7,actors,", ")
 for(i=1;i<=length(actors);i++)
   uniq_actors[actors[i]]=1
 };

END{
  for(actor in uniq_actors)
    print actor,uniq_actors[actor]

  # print length(uniq_actors)    
    };
       
