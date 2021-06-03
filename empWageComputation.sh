x=$((RANDOM%2))
case "$x" in
"1")
echo employee is present
;;
"0")
echo employee is absent
;;
esac

FullDayHr=8
PartTimeHr=4
wageperHr=20
month=1
totalhr=0
totalwage=0

while [[ $month != 21 ]];do

a=$((4+((4*$((RANDOM%2))))))
case "$a" in
"8")
echo wage for fullday: "$(($FullDayHr*$wageperHr))"
totalhr=$(($totalhr+$a))
((month++))
;;

"4")
echo part time wage  : "$(($PartTimeHr*$wageperHr))"
totalhr=$(($totalhr+$a))
((month++))
;;

esac

if [ $totalhr -ge 100 ]
then
     break
fi
done
totalwage=$(($totalhr*20))
echo wage for working for a month:"$totalwage"



