# ###### Count the number of characters in user's input by using shell scripting ######

# =================================
echo "Enter a character:"
read var

if [ `echo $var | wc -c` -eq 2 ]
# We have to put 2 because 1 is for character and other 1 is for the new line character which comes by pressing enter
then 
    echo "You entered a character"
else
    echo "Invalid input"
fi    
