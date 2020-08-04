# ###### while loop ######

# =================================
# Remember:
# 1. Declare and Initialize a control variable
# 2. Put the control variable in a test condition
# 3. Increment/Decrement the value of control variable
# =================================
# control variable
count=1 

while [ $count -le 10 ]
do 
    echo $count
    # incrementing the control variable
    count=`expr $count + 1` 
done
