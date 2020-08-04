# ###### Integers ######

# =================================
int1=1 
int2=7
# =================================
# old way -eq, -ne, -gt, -lt, -ge, -le
# in new sytax [[]], we will use =, !=, <=, >=, >, <
# using the old way so that when we get into trouble we can get out of it which can't be done in the new way
# =================================
# equal, not equal

# -eq, -ne

if [ $int1 -eq $int2 ]; then
    echo "${int1} is equal to ${int2}"
fi

if [ $int1 -ne $int2 ]; then 
    echo "${int1} is not equal to ${int2}"
fi
# =================================
# greater that, less than

# -gt, -lt, ge, -le

if [ $int1 -gt $int2 ]; then
    echo "${int1} is greater than ${int2}"
fi

if [ $int1 -le $int2 ]; then
    echo "${int1} is less than equal to ${int2}"
fi
