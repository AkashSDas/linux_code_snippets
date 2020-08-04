# ###### string testing ######

# =================================
str1="Hello"
str2="World"
str3=
# =================================
# $? --> returns the status code 
# 1 --> false
# 0 --> true
# =================================
# Checking if string are equal
[ "$str1" = "$str2" ]
echo "$?"

# Checking if string are not equal 
[ "$str1" != "$str2" ]
echo "$?"

# n --> not null
[ -n "$str1" ]
echo "$?"

# z --> null
[ -z "$str3" ]
echo "$?"
