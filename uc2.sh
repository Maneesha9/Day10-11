#!\bin\bash -x
declare -A computation
read -p "enter a: " a
read -p "enter b: " b
read -p "enter c: " c
result1=$(($a+$b*$c))
computation[result1]=$result1
echo "a+b*c = $result1"
