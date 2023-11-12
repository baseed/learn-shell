 total=$(free | grep Mem | awk '{print $2}')
 free=$(free | grep Mem | awk '{print$4}')

 free_percentage=$(echo "$free / $total * 100" | bc -l | awk -F . '{print $1}')
 echo free_percentage $free_percentage
  used_percentage=$(echo "100 - $free / $total * 100" | bc -l | awk -F . '{print $1}')
  echo used_percentage $used_percentage

  # used_percentage=0-50  good
  # 50-70 orange
  # >70 Red

  if [ $used_percentage -lt 50 ]; then
     echo Mem start is GREEN
  elif [ $used_percentage -lt 70 ]; then
     echo Mem start is orange
  else
     echo Mem is Red
  fi
