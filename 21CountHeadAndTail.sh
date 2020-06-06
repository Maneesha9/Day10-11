#!/bin/bash -x
#result=$((RANDOM%2))
Tailcount=0
Headcount=0
i=0
        while [ $i -ge 0 ]
        do
             result=$((RANDOM%2))
               if [ $result -eq 1 ]
               then
                  Tailcount=$(($Tailcount + 1 ))
                      if [ $Tailcount -eq 21 ]
                      then
                      echo "Tails win"
                      break
                      fi
               else
                  Headcount=$(($Headcount + 1 ))
                  if [ $Headcount -eq 21 ]
                  then
                  echo "Heads win "
                  break
                  fi
               fi
       ((i++))
       done
           echo "Number of occurence of Tail="$Tailcount
           echo "Number of occurence of Head="$Headcount
