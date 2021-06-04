declare -A dailyandtotalwage
declare -A Day
FulldayHr=8
PartTimeHr=4
WagePerHr=20
month=1
totalhr=0
totalwage=0
day=0
dailywage=0
check=0

function WorkHrs
{
while [[ $month != 21 ]];do

   a=$((4+((4*$((RANDOM%2))))))

   check=$(($month%5))

   case "$check" in
      "1")
		Day[$month]="Monday"
 		echo "Monday"
       ;;
      "2")
		Day[$month]="Tuesday"
        	echo "Tuesday"
       ;;
      "3")
		Day[$month]="Wednusday"
		echo "Wednusday"
       ;;
      "4")
		Day[$month]="Thursday"
		echo "Thursday"
       ;;
      "0")
		Day[$month]="Friday"
		echo "Friday"
       ;;
   esac


    case "$a" in
       "8")
    		dailywage=$(($a*20))
    		totalhr=$(($totalhr+$a))
    		dailyandtotalwage[$day]=$dailywage
		echo dailywage :${dailyandtotalwage[$day]}
		((day++))
		((month++))
	;;

	"4")
		dailywage=$(($a*20))
		totalhr=$(($totalhr+$a))
		dandtwage[$d]=$dailywage
		echo dailywage :${dailyandtotalwage[$day]}
		((day++))
		((month++))
 	;;
    esac
    done

 echo total work Hrs are "$totalhr"
 totalwage=$(($totalhr*20))
 dailyandtotalwage[$day]=$totalwage
 echo total wage : ${dailyandtotalwage[$day]}
}

WorkHrs



