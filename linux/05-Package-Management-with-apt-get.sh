# ###### Package Management with apt-get ######

# =================================
# To install softwares and security updates
# There is graphical tool to do this but we will use command line to do this task
# =================================
# 1. apt-get update

apt-get update
# This command will give error when we don't have root permissions
# =================================
# 2. Using the root powers

# To use root powers sparingly sudo 

# sudo --> super user do 
# If we prepend any command with sudo, it will be executed as root instead of the user we are
# The first user that is created has sudo powers since it is the root user itself

sudo apt-get update
# It will hit every repository of software that we got and check for the lastest version for those
# =================================
# 3. To upgrade our system

apt-get upgrade
# It can be tremendous amount of update, so be careful
# =================================
# 4. To search something to install

apt-cache search <name_of_what_we_want_to_find>
# =================================
# 5. To install something

apt-get install <what_we_want_to_install>

# We can install multiple programs at the same time
# If the software that we are installing requires other softwares then it will ask us to install those
# =================================
# 6. To unistall something

apt-get remove <what_we_want_to_uninstall>
# =================================
# 7. To install softwares that aren't in the repository

# Go to PPA in Google
# These people aren't verified, so we have to be careful because we are giving our sudo power to them
