# ###### Strings ######

# =================================
# Equality (= and !=) (ASCII Comparison)

str1="a"
str2="b"

if [ "$str1" = "$str2" ]; then
    echo "${str1} is eqaul to ${str2}!"
fi

if [ "$str1" != "$str2" ]; then
    echo "${str1} is not equal to ${str2}!"
fi 
# =================================
# Null (-n) or Zero length (-z)  

notnully="this is something (not nothing)"
nully=""

if [ -n "$notnully" ]; then
    echo "This is not at all nully..."
fi 

if [ -z "$nully" ]; then
    echo "nully/zeroooo (lenght)"
fi    
# =================================
# String comparison operators can be used with double parenthese

str1="a"
str2="a"

if (( $str1 == str2 )); then
    echo "${str1} is equal to ${str2}"
fi
# =================================
# (())
# ==    Is equal to 
# !=    Is not equal to 
# <     Is less than
# >     Is greater than
# <=    Is less than or equal to 
# >=    Is greater than or equal to 
