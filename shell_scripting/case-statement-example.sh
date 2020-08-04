# ###### Using the case statement to check what word is entered ######

# =================================
echo "Enter a character:"
read word

case $word in 
[aeiou]* | [AEIOU]*)
    echo "The word begins with a vowel"
    ;;
[0-9]*)
    echo "The word begins with a digit"
    ;;
*[0-9])
    echo "The word ends with a digit"
    ;;
???)
    echo "You entered a three letter word"
    ;;
*)
    echo "I don't know what you have entered"
    ;;
esac
