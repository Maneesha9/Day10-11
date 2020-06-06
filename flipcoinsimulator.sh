#!/bin/bash -X
result=$((RANDOM%2))
if [ $result -eq 1 ]
then
echo "Tails:Winner"
else
echo "Head:Losser"
fi
