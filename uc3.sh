#!\bin\bash -x
declare -A computation
read -p "enter a: " a
read -p "enter b: " b
read -p "enter c: " c
result2=$(($a*$b+$c))
computation[result2]=$result2
echo "a*b+c = $result2"
