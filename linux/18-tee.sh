# ###### tee ######

# =================================
# tee command reads the standard input and writes it to both the standard output and one or more files. 
# The command is named after the T-splitter used in plumbing. 
# It basically breaks the output of a program so that it can be both displayed and saved in a file.
# tee will split our output so that we can do multiple things with same output
# =================================
# Example where we would need tee 

touch mylog.log 
echo $(date) >> mylog.log
date
cat mylog.log 

# If we don't know tee we would open new shell and do this 
tail -f mylog.log 

# As we run the line --> echo $(date) >> mylog.log --> in our first shell, we will see it's date's being added to the mylog.log file by our second shell in real time 
# But if we close the file we cannot read it, then we will use the cat to see what is there in the log file, which in turn we are logging into the file 
# Also we now cannot read it in real time 
# =================================
# With tee soultion for this simple and we can do this in same file only 

date | tee mylog.log 
# This will tell tee to make sure whatever we are getting make it is written in the mylog.log file also show us in real time the STDOUT in my shell
# This is great for long running program

# Why do we want to entry only in the log file 
# Because when we are using tee, by default if we are logging into something the log wiill be overwritten 
# For long running program that's fine
# But if we are running a series of command and we teeing them into log file we want to use -a command for append
date | tee -a mylog.log
# So instead of wiping the output it will append it to the log file
