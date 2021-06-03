

FullDayHr=8
PartTimeHr=4
WagePerHr=20
month=0
totalhr=0
totalwage=0

function WorkHrs
{
while [[ $month != 21 ]];do

a=$((4+((4*$((RANDOM%2))))))
case "$a" in
"8")
totalhr=$(($totalhr+$a))
((month++))
;;

"4")
totalhr=$(($totalhr+$a))
((month++))
;;
esac
done
echo total work hours are "$totalhr"
}

WorkHrs



