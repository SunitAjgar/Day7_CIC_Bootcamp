declare -a Array=("$((RANDOM%1000))" "$((RANDOM%1000))" "$((RANDOM%1000))" "$((RANDOM%1000))" "$((RANDOM%1000))" "$((RANDOM%1000))" "$((RANDOM%1000))" "$((RANDOM%1000))" "$((RANDOM%1000))" "$((RANDOM%1000))")
echo ${Array[@]}
Secondlargest=${Array[0]}
Secondsmallest=${Array[9]}
for i in "${Array[@]}"
do
if [[ "$i" -gt "$Secondlargest" ]]; then
        $Secondlargest="$i"
    fi
    if [[ "$i" -lt "$Secondsmallest" ]]; then
        $Secondsmallest="$i"
    fi
done
echo "Secondlargest: $Secondlargest"
echo "Secondsmallest: $Secondsmallest"