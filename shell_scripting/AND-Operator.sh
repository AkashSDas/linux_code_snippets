# ###### AND Operator ######

# =================================
# Ask the user to enter a number and check if it lies betwee 9 to 37

echo "Enter a number:"
read num

if [ $num -ge 9 -a $num -le 37 ]
then 
    echo "The number you entered lies in the range"
else 
    echo "The number you entered is out of range"
fi
