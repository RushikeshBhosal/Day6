#!/bin/bash -x

read -p "Enter the Temp:" Temperature

echo "Celsius to fahrenheit"
echo "fahrenhiet to celsius"
celsius=0
fahrenheit=$((RANDOM%2))
function unitconversion()
{

case $degreecheck in 
       $celsius)
        echo "$celsius c =$fahrenheit f"
              ;;
       $fahrenheit)
        echo "$fahrenheit f =$celsius c"
esac
}
 if [[ $degreecheck -eq 0 ]]
then
      celsius=`awk -v Temperature="$fahrenheit" "BEGIN{print ($Temperature - 32) * (5/9)}"`
else
     fahrenheit=`awk -v Temperatur="$celsius" "BEGIN{print (9/5) * ($Temperature + 32)}"`
fi
