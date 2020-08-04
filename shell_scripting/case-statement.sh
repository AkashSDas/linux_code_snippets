# ###### The "case" statement ######

# =================================
echo "Enter a character:"
read var

# We have to use a control variable and since our character is stored in var we are going to use var
# "in" keyword is used to get inside the case block

case $var in 
[a-z])
    echo "You entered a lower case alphabet"
    ;;
[A-Z])    
    echo "You entered a upper case alphabet"
    ;;
[0-9])
    echo "You entered a digit"
    ;;
?)
    echo "You entered a special symbol"
    ;;
*)
    echo "You entered more than one character"
    ;;
esac
# Ending the case block using esac which is reverse of case
