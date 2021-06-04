declare -A dandtwage

FulldayHr=8
PartTimeHr=4
WagePerHr=20
month=1
totalhr=0
totalwage=0
day=0
dailywage=0

function WorkHrs
{
while [[ $month != 21 ]];do

a=$((4+((4*$((RANDOM%2))))))
case "$a" in
"8")
dailywage=$(($a*20))
totalhr=$(($totalhr+$a))
	dandtwage[$day]=$dailywage
echo dailywage :${dandtwage[$day]}
((day++))
((month++))
;;

"4")
dailywage=$(($a*20))
totalhr=$(($totalhr+$a))
dandtwage[$day]=$dailywage
echo dailywage :${dandtwage[$day]}
((day++))
((month++))
;;
esac
done

echo total work hours are "$totalhr"
totalwage=$(($totalhr*20))
dandtwage[$day]=$totalwage
echo total wage : ${dandtwage[$day]}
}

WorkHrs



