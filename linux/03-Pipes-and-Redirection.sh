# ###### Pipes and Redirection ######

# =================================
# Shell Features: Pipes and Redirection
# =================================
# ### Redirection ###
# =================================
# INPUT and OUTPUT Redirection

# Anything that is running has 3 processes
#   1. STDIN(it takes input from somewhere it can be network, file, etc)
#   2. STDOUT(since input is taken it gives an output and it can be in shell, file, network)
#   3. STDERR(this is different kind of output)

# Every process that is running on Linux Kernel has 3 channels STDIN, STDOUT and STDERR. These channels has number corresponding to them.

# Channel | Corresponding Number
# =================================
# STDIN    | 0
# STDOUT   | 1
# STDERR   | 2
# ---------------------------------
# ### Redirection of STDOUT ###

# If we don't want STDOUT to be in a shell and we want it to be in a file
echo "this is a file" 1> somefile.txt
cat somefile.txt

# There is a shortcut for this 
echo "this is a file" > somefile.txt
# It will do the same thing 
# It doesn't need 1 because if we use OUTPUT Redirection by default it is going to take STDOUT and Redirect to that file

# This redirect will create a new file (if it doesn't exist)

# When we use single > it will overwirte what is written in that file

# To append in a file use two > (angular bracket)
echo "this is a file" >> somefile.txt
# This will prevent overwirting
# ---------------------------------
# ### Redirecting STDERR ###

ls -alh somefile.txt >> listoutput.txt
# This will write the STDOUT in the file 

# But if we list a non existing file and write the output of that in a file 
ls -alh soljclsdj >> listoutput.txt
# It will give an error, it will come back to the shell
cat listoutput
# We will see that it is not there in the file 
# This is because STDOUT and STDERR are different

# The correct way is 
ls -alh soljclsdj 2> err.txt
cat err.txt
# ---------------------------------
# ### Redirecting STDIN ###

# Use < for input redirection

echo "this is the message text" > message.txt 

# STDIN
mail -s "this is the subject" user < message.txt
# mail --> it will call the mail program 
# s --> it is the subject 
# =================================
# ### Pipes ###
# =================================
# We call some program(say prog1) then the pipe character and the other programs separated by pipes 
# prog1 | prog2

# What does this do?
#   prog1 has some input and will give some output, pipe takes that output and feeds it to the prog2 as its input

# Example
# STDIN  --> 0
# STDOUT --> 1

# prog1 | prog2
#   1       0 
  
#  This will help to filter out the result we want

# prog1 | prog2 | prog3 | ...
