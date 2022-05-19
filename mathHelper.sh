#!/bin/bash

giai_pt(){
echo Enter the coefficient of x^2:
read a
echo Enter the coefficient of x:
read b
echo Enter the constant term:
read c
f=`echo "-($b)" |bc`
p=`expr 2 \* $a`
if [ $a -ne 0 ]
then
    d=`echo \( \( $b \* $b \) - \( 4 \* $a \* $c \) \) | bc`    
    if [ $d -lt 0 ]
    then
        x=`echo "-($d)" | bc`
        s=`echo "scale=2; sqrt ( $x )" | bc`
        echo The first root is:
        echo "($f + $s i) / $p"
        echo The second root is:
        echo "($f - $s i) / $p"
        
    elif [ $d -eq 0 ]
    then
        res=`expr $f / $p`
        echo The root is: $res
    else
        s=`echo "scale=2; sqrt( $d )" | bc`
        res1=`echo "scale=2; ( $f + $s) / ( $p )"|bc`
        res2=`echo "scale=2; ( $f - $s) / ( $p )"|bc`
        echo The first root is: $res1
        echo The second root is: $res2
    fi
else
    echo Coefficient of x^2 can not be 0.
fi
}

dien_tichht(){
    echo "Nhap ban kinh duong tron : "
    read r
    pi=3,14
    s=$[$pi*$r*$r]
    echo "dien tich : $s"
}


so_nguyento(){
    echo  "Enter number : "
    read n
    for ((i=2;i<=$n/2;i++))
    do 
    ans=$(( n%i ))
  if [ $ans -eq 0 ]
  then
    echo "$n is not a prime number."
    exit 0
  fi
done
echo "$n is a prime number."
}

echo "Nhap yeu cau bai toan: "
read request

if [[ "$request" == "1" ]]
then 
giai_pt
elif [[ "$request" = "2" ]]
then
dien_tichht
elif [[ "$request" == "3" ]]
then
so_nguyento
else 
echo "Khong the giai"
fi
