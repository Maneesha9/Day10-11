#!/bin/bash -x
result=$((RANDOM%2))
Tailcount=0
Headcount=0
i=0
        while [ $i -le 20 ]
        do
             result=$((RANDOM%2))
               if [ $result -eq 1 ]
 then
                  Tailcount=$(($Tailcount + 1 ))
               else
                  Headcount=$(($Headcount + 1 ))
               fi
       ((i++))
       done
           echo "Number of occurence of Tail="$Tailcount
           echo "Number of occurence of Head="$Headcount
