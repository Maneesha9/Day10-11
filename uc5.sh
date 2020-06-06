#!\bin\bash -x
declare -A computation
read -p "enter a: " a
read -p "enter b: " b
read -p "enter c: " c
result4=$(($a%$b+$c))
computation[result4]=$result4
echo "a%b+c = $result4"
