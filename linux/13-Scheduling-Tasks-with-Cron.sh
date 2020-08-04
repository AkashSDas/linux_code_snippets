# ###### Scheduling Tasks with Cron ######

# =================================
# Scheduling in Linux. 
# If we want some program, script or something we need to run in future on every day or it is one time process we can schedule it using Cron
# =================================
# Each user has cron tab, short for cron table
# =================================
# listing the cron tab
crontab -l
# =================================
# If we don't have one we can create it 

crontab -e 
# e --> edit

# If we are running it for the first time then we may need to set our default editor
# =================================
# A modified look of the crontab
    #15  10  *   *   3-5     echo "hello world" >> test.txt 
    #(m) (h) (dom) (moy) (wd) (cmd)
     
# * --> it represents every. So everyday, every month and so on

# cron automatically see's that there is crontab for this user, So it automatically pull's that to crontab
# =================================
# User crontab are kept in 
ls /var/spool/cron/crontabs

# If permission is denied
sudo ls /var/spool/cron/crontabs
# =================================
# There one crontab for one user 
sudo less /var/spool/cron/crontabs/<username>
# =================================
# For software packages that we install 
ls /etc/cron.d/
# For packages we install, packages specific schedule jobs so that they don't polute user's file or some other packages some where else  
# =================================
# To do something more complicated

# There is a system wide crontab also 
# It has one more column that is --> user 

# It is in
sudo <editorname> /etc/crontab
# =================================
# Advance syntax

#15  10  1-10/2  *   5   echo "hello world" >> test.txt 
#(m) (h) (dom) (moy) (wd) (cmd)

# / inplies recurring everything in 2, Say in day 1 to 10 every 2 days

# dom and wd goes together, both have to True then only the task will be performed 
# =================================
# Another Advance Syntax

#15  10  1,2,3,7  *   5   echo "hello world" >> test.txt 

# Passing list of days of month

# , --> list
# * --> everything
# =================================
# Controlling Access to the crontab Command:
    
# We can control access to the crontab command by using two files in the /etc/cron.d directory: cron.deny and cron.allow. 
# These files permit only specified users to perform crontab command tasks such as creating, editing, displaying, or removing their own crontab files.

# The cron.deny and cron.allow files consist of a list of user names, one user name per line.

# These access control files work together as follows:

# If cron.allow exists, only the users who are listed in this file can create, edit, display, or remove crontab files.

# If cron.allow does not exist, all users can submit crontab files, except for users who are listed in cron.deny.

# If neither cron.allow nor cron.deny exists, superuser privileges are required to run the crontab command.

# None of the user names in the default cron.deny file can access the crontab command. 
# We can edit this file to add other user names that will be denied access to the crontab command.

# Superuser privileges are required to edit or create the cron.deny and cron.allow files.
# =================================
# If we are root and we want to edit the user crontab 

sudo -i

crontab -e

crontab -e -u <username>

# And then we can edit 
