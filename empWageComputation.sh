echo "Welcome to Employee Wage Computation"

isPresent=1

random=$(($RANDOM%2))

if [ $isPresent -eq $random ]
then
     WagePerHr=20;
     FullDayHr=8;
     Salary=$(($FullDayHr*$WagePerHr))
     echo $Salary
else
     Salary=0;

fi
