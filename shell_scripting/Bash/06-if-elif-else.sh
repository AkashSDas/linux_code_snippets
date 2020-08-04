# ###### if block ######

# =================================
#!/bin/bash
# =================================
# This is the first problem
# This is what it looks like in most of the linux based operating system
if [[ condition ]]; then
    # statements
fi
# fi end's the if block

# Generally we want to write something that is very portable. Our root shell is not something like Bash shell it's C shell or original Born shell or something that doesn't support this syntax
# =================================
# Old test 
if [ condition ]; then
    # statements
fi 
# =================================
# The new one is better but less portable
# The old one is portable but annoying
# =================================
# The equal(=) sign is used for comparison
NAME="James"
if [ "$NAME" = "James" ]; then
    echo "Hi James"
fi
# ---------------------------------
# Linux is case-sensitive
NAME="james"
if [ "$NAME" = "James" ]; then
    echo "Hi James"
fi
# ---------------------------------
# ### elif condition and else statment ###

NAME=$1
GREETING="Hi there"
HAT_TIP="*tip of the hat*"
HEAD_SHAKE="*slow head shake*"

if [ "$NAME" = "James" ]; then
    echo $GREETING
elif [ "$NAME" = "Steve" ]; then
    echo $HAT_TIP
else
    echo $HEAD_SHAKE
fi    

# In our terminal:
# ./<filename> James
# ./<filename> Steve
# ./<filename>
