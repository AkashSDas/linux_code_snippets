# ###### continue statement ######

# =================================
count=0

while [[ $count -le 9 ]]
do
    count=`expr $count + 1`
    if [[ $count -eq 6 ]]
    then
        echo "This count will not be echoed"
        continue
    fi
    echo $count
done 

echo "We are out of the loop"
