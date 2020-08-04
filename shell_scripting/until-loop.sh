# ###### until loop ######

# =================================
# The until loop is execuated only if the condition evaluates to be false
# =================================
# control variable
count=1

until [ $count -gt 10 ]
do 
    echo $count
    # incrementing the value
    count=`expr $count + 1`
done

# Here each time when the condition evaluates to be false the loop is execuated
