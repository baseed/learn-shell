 total=$(free | grep Mem | awk '{print $2}')
 free=$(free | grep Mem | awk '{print$4}')

 free_percentage=$(echo "$free / $total * 100" | bc -l | awk -F . '{print $1}')
 echo free_percentage $free_percentage
  ufree_percentage=$(echo "100 - $free / $total * 100" | bc -l | awk -F . '{print $1}')
  echo ufree_percentage $ufree_percentage