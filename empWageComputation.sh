isPartTime=1;
isFullTime=2;
WagePerHr=20;
numWorkingDay=20
empHr=0;
TotalWage=0;

for((day=1;day<=$numWorkingDay;day++))
do
   empCheck=$(($RANDOM%3));

	case $empCheck in
		 $isFullTime)
			empHr=8
			;;
		$isPartTime)
			empHr=4
			;;
		*)
	  	empHr=0
	        	;;
	esac
	TotalWage=$(($WagePerHr*$empHr))
	echo "DailyWage of Employee::"$TotalWage
done

