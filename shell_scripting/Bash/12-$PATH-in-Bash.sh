# ###### $PATH in Bash ######

# =================================
# We might wonder when we type 
sudo echo "something"
# How does shell, bash, how does it know where to find sudo or binary or script that is going to run as a result of me typing that command
# =================================
# If we type 
which sudo
# It will give us the path where it first found the sudo command

# But how did it actually found that
# Well it is set in my path variable
echo $PATH
# It is a colon(:) separated list of directories, these are the directories and in this order bash is going to look does this have sudo or not 
# Where it found the command it will stop there only
# =================================
# ### which ###

which sudo 
# It tells where it found the sudo command first
# =================================
# ### What this means for scripting? ###

# We must have heard that in all of our bash script, we should always put the full path to the binary or file that we are trying to call or include or work with them
# Why is that?
#     It's because how the PATH variable work, how bash treats it 

# We should do this:
/usr/bin/sudo 
# Rather than doing this:
sudo

# If someone edits the PATH variable then sudo command alone can become a issue
# =================================
# ### Prepending and Appending to $PATH ###

# Editing the PATH variable

# NOTE:Don't try it 
# Appending to the path 
PATH=$PATH:/some/dir 
# This is generally what we want to do unless we want to overwrite some of the most important directories to get search first
# So if we want our directories to get searched first before system directories or binaries or something else 

# Prepending to PATH vaiable 
# NOTE:Don't try it 
PATH=/root:$PATH

echo $PATH
sudo echo "hello world"

# If bash find sudo in the root then it will stop searching in other places
# But this an issue since someone can mess with the command and give undesired results

# That's why we need to put the absolute path to the binary or scriptt that we want to work with 
# =================================
# Modifying $PATH in ~/.bash_profile

# Inside the ~/.bash_profile we will see there what PATH variable is by default set to 
PATH=$PATH:$HOME/bin 
# There we can edit the PATH for one user and not the other user

# Where the original PATH is coming from 
less /etc/profile 

less /etc/profile.d
# =================================
# ### Real Life Use ###

# Don't try this 

# If we want to PATH variable for single user 
ls /home/james/.bash_profile

# IF we want to do it for the root 
ls /root/profile

# If we to want to do it for all user expect for root 
less /etc/profile 
