# ###### Variables and Quoting ######

# =================================
# ### Variables ###
# =================================
echo "hello"

# Varibles in bash start with $ sign
echo $varname

# Our shell enviroment will HOME varibles and it is just a convention to have them in all caps (since enviroment variables are in all caps)
echo $HOME

$HOME

echo $somenumber
# ---------------------------------
# Calling a variable
myvar="this is so wonderfull"

# This will not work 
myvar = "this is so wonderfull"
# Because it is looking at myvar as first command and the after the first space it looks equal to sign as argument and String as an argument

echo $myvar
# ---------------------------------
somenumber=6
echo $somenumber
# ---------------------------------
# If we have variable of more than one word then separate them with underscore(_)
some_number=10
echo $some_number
# =================================
# ### Quoting ###
# =================================
echo "My favourite number is $some_number"

# But if we want 10th that is some string just after the variable 
echo "My favourite number is $some_numberth"
# $some_numberth will not be executed

# We will delimit the variable by using curly braces {}
echo "My favourite number is ${some_number}th"
# ---------------------------------
# Other type of Quoting is Command Substitution 
# ---------------------------------
echo "there are somenumber of lines in /etc/shadow"

wc -l < /etc/shadow
# The above command will give the number of line in /etc/shadow file

# To execute the command inside the string we will use backward quotes
echo "there are `wc -l < /etc/shadow` of lines in /etc/shadow"
# ---------------------------------
num_lines=`ls $HOME | wc - l`
echo $num_lines
