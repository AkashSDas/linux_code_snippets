# ###### User Account Management ######

# =================================
# There are service accounts or user accounts 
tail /etc/passwd
# /etc/passwd is a text file that contains the attributes of (i.e., basic information about) each user or account on a computer running Linux or another Unix-like operating system. 
# Each line contains seven attributes or fields: name, password, user ID, group ID, gecos, home directory and shell.
# ---------------------------------
cat /etc/passwd
# This will give a lot of information

cat /etc/passwd | wc -l
# =================================
tail /etc/shadow
# The /etc/shadow file stores actual password in encrypted format (more like the hash of the password) for user's account with additional properties related to user password. 
# Basically, it stores secure user account information. All fields are separated by a colon (:) symbol.
# =================================
tail /etc/group
# /etc/group is a text file which defines the groups to which users belong under Linux and UNIX operating system
# =================================
# To add user

useradd -m -d /home/james -u 1501 -g 66
useradd -m -d /home/james -s /bin/bash james

# -m, --create-home --> Create the user's home directory if it does not exist. The files and directories contained in the skeleton directory (which can be defined with the -k option) will be copied to the home directory.
# -d, --home HOME_DIR --> The new user will be created using HOME_DIR as the value for the user's login directory. The default is to append the LOGIN name to BASE_DIR and use that as the login directory name. The directory HOME_DIR does not have to exist but will not be created if it is missing.
# -u, --uid UID --> The numerical value of the user's ID. This value must be unique, unless the -o option is used. The value must be non-negative. The default is to use the smallest ID value greater than 999 and greater than every other user. Values between 0 and 999 are typically reserved for system accounts.
# -s, --shell SHELL --> The name of the user's login shell. The default is to leave this field blank, which causes the system to select the default login shell specified by the SHELL variable in /etc/default/useradd, or an empty string by default.
# ---------------------------------
tail /etc/passwd 
# The user id and group id will automatically get incremented
# ---------------------------------
tail /etc/shadow
# We have to set password manually

ls -l /home 

grep james /etc/group 
# =================================
# Setting password for user

passwd james 
# It will ask us what password we want to set 
# ---------------------------------
tail /etc/shadow
# Now we will see password hash code 
# ---------------------------------
# If we want to lock the password
usermod -L james

tail /etc/shadow
# ---------------------------------
# To unlock the user 
usermod -U james

tail /etc/shadow
# ---------------------------------
# To delete user 
userdel james

# From all this place the user is gone
tail /etc/passwd
tail /etc/group
tail /etc/shadow

# But the in home directory it's still there 
ls /home 

ls -l /home 

# Deleting users in home directory 
rm -rf /home/james 

# That's the only place where user has something left

# That's not the case if we are in FS, we got remote files that the user is working on, for that we have to find those place and clean the user from there 
# =================================
# We can script the useradd command
# If we want to create 100 user or some this kind of work 

# For this we will use newUsers
man newUsers

# We will get the format in which user should enter the data
