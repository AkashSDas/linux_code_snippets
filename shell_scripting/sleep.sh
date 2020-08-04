# ###### sleep command ######

# =================================
# Sleep command is used to delay for a fixed amount of time during the execution of any script.

echo "Enter a sentence:"
read sentence

for word in $sentence
do 
    echo $word
    sleep 2
    # sleep <number_of_seconds>
done
