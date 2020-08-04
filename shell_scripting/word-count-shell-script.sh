# ###### Making wc command using shell scripting ######

# =================================
echo "Enter a file name:"
read file_name

terminal=`tty`

exec < $file_name

num_of_lines=0
num_of_words=0

while read line
do 
    num_of_lines=`expr $num_of_lines + 1`
    set $line
    num_of_words=`expr $num_of_words + $#`
done

echo "Number of lines are $num_of_lines and number of words are $num_of_words"

exec < $terminal
