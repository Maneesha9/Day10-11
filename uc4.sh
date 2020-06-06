#!\bin\bash -x
declare -A computation
read -p "enter a: " a
read -p "enter b: " b
read -p "enter c: " c
result3=$(($c+$a/$b))
computation[result3]=$result3
echo "c+a/b = $result3"
