# ###### Arguments ######

# =================================
#!/bin/bash
# =================================
# Note: Bash is suited only for light automation task, so don't get too fancy with this
# =================================
# ### Arguments reference ###
# $# --> number of args that our script was ran with
# $0 --> the filename of our script
# $1...$n --> script arguments
# =================================
# what's our filename?

ourfilename=$0
echo $ourfilename

# If we change the filename then $0 will change which in turn means that our ourfilename variable's value will also change
# =================================
# How many arguments was the script called with?

num_arguments=$#
# =================================
# What were the arguments?

echo "The first three arguments were ${1}, ${2} and ${3}"
# =================================
# In the terminal pass:
# ./<filename> hello hi bye
# The result of above command will be:
# The first three arguments were hello, hi and bye
# =================================
# If we have some argument that wasn't passed then it will give us a blank line
echo $5
