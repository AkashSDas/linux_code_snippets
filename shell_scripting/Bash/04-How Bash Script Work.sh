# ###### How Bash Script Work ######

# =================================
# To get where is bash binary or link to it
which bash

# Output --> /bin/bash 
# =================================
# The first line in any bash script will be the path 

# *** Inside the script file ***
#!/bin/bash 

# This is a comment in bash script 

# A script may specify #!/bin/bash on the first line, meaning that the script should always be run with bash, rather than another shell. /bin/sh is an executable representing the system shell. The system shell is kind of the default shell that system scripts should use

# The reason to start the file with #!/bin/bash is when we save a file and call it .sh or .txt or .whatever Linux doesn't care because file endings have no real meaning for Linux based operating system

# But use .sh extension so that other people can understand that it is shell script
# =================================
# *** Inside the script file ***
#!/bin/bash

# This is a comment

echo "Hello World"
# =================================
# ### Return value ###

# A function or script returns value

# Return value ranges from 0-255
# 0 ---> Exit code 0 means no problem encounterd

# If we are writing some complex script we should use --> exit 12 or something else

# *** inside the script file ***
#!/bin/bash

# This is a comment

echo "Hello World"

exit 0 
# =================================
# We can also do like, just simply write exit And this means that return value from the last function or command we ran

# *** inside the script file ***
#!/bin/bash

# This is a comment

echo "Hello World"

exit
# =================================
# We can explicitly add $? after exit say that we didn't accidentally exit for whatever value my statement returns like is above case where it is just exit 

# *** inside the script file ***
#!/bin/bash

# This is a comment

message="Hello World"

echo $message

exit $?
# =================================
# Now if we try to run the script by typing --> ./<filename> -> it will say permission denied 
# Do long listing
ls -l
# We will see executable permission is not given
# Give it the permission
chmod +x <filename>
# =================================
# ### Execute the file ###

./<filename>
# ---------------------------
# We can also run command by using 
bash <filename>

# Another way is
source <filename>

. <filename> # source --shortcut--> .

# We cannot accesses the variable before using --> source <filename>
# We can access them after using --> source <filename>

# Sourcing is not how we just run a script, Sourcing something takes our existing shell and arguments with variables that are set in the sheel that we are specifing
# ================================
# To run a script set the execute bit --> ./ --> and then call it --> ./<filename>
# To source a script or integrate its variable into the our sheel (login sheel) use the dor(.) notation or source (both are same) --> . <filename>
