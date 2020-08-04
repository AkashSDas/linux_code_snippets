# ###### for loop ######

# =================================
# Here item is the control variable
# The loop will check every(since * is used) file in the directory where this script is present
for item in *
do
    if [ -d $item ]
    then 
        echo $item
    fi
done
# =================================
# To loop for files

for item in *
do
    if [ -f $item ]
    then 
        echo $item
    fi
done
