isPartTime=1;
isFullTime=2;
WagePerHr=20;
empHr=0;
TotalWage=0;
random=$(($RANDOM%3));

if [ $isFullTime -eq $random ];
then
       empHr=8;
elif [ $isPartTime -eq $random ];
then
       empHr=4;
else
     empHr=0;
fi
TotalWage=$(($WagePerHr*$empHr))
echo "DailyWage of Employee::"$TotalWage

