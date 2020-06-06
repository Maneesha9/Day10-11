#!\bin\bash -x
declare -A computation
read -p "enter a: " a
read -p "enter b: " b
read -p "enter c: " c
result=$(($a+$b*$c))
computation[result]=$result
echo "a+b*c = $result"
result1=$(($a*$b+$c))
computation[result1]=$result1
echo "a*b+c = $result1"
result2=$(($c+$a/$b))
computation[result2]=$result2
echo "c+a/b = $result2"
result3=$(($a%$b+$c))
computation[result3]=$result3
echo "a%b+c = $result3"
count=0
echo " "
echo "stored in dictionary "
for key in ${!computation[@]}
do
echo $key : ${computation[$key]}
result[(count++)]=${computation[$key]}
done
for ((i=0 ; ${result[i]} ; i++))
do
for ((j=$(($i+1)) ;$j<$count ; j++))
do
if (( ${result[i]}<${result[j]} ))
then
temp=${result[i]}
${result[i]}=${result[j]}
${result[j]}=$temp
fi
done
done
echo " "
echo "stored in array"
echo "results in acending order  : ${result[@]}"
