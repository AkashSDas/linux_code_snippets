# ###### number testing ######

# =================================
# Asking the user to give an input of number between 10-20 and check where does it lies

echo "Enter a number between 10 and 20:"
read num 

if [ $num -lt 10 ]
then 
    echo "The number entered is below 10"
elif [ $num -gt 20 ]    
then
    echo "The number entered is above 20"
else
    echo "The number entered lies between 10 and 20"
fi    
# =================================
# Comparing floating numbers

a=4.5
b=4.5

# -eq cannot be used in case of floating numbers
# [ $a -eq $b ]

[ "$a" = "$b" ]

# Checking the status code
echo $?
# 0 --> success
# 1 --> failure
