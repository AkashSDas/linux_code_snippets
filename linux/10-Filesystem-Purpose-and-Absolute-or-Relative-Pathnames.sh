# ###### Filesystem Purpose and Absolute/Relative Pathnames ######

# =================================
# ### Filesystem API ###

# There are lot's of different Filesystems
# Types of Linux File Systems
    # ext2.
    # ext3.
    # ext4.
    # jfs.
    # ReiserFS.
    # XFS.
    # Btrfs.
# These are one level below, they are Linux Filesystem API's. The language that we are going to use to deal with underlying filesystem    
# =================================
# In Linux other than files we have other resources that are using filesystem. 
# For example our hardware RAM, memory and other hardware communicates with the kernel and whatever process is needed through the filesystem

# So for all things who got a file that refers to the driver and then where it is melted, the kernel organizes the communication between those two thing
# So the software that runs the device and the software on the device, the firware
# And all these is represented through files, we have to manage it manually but now most of that is done automatically 
# =================================
# 1. udevd

ps -aux | grep udevd

# devd -- device state change daemon
# it is a process that always runs in the background and is listening for events 
# The devd utility is a system daemon that runs in the background all the time.  
# Whenever a device is added to or removed from the device tree, devd will execute actions specified in devd.conf(5).
# =================================
# 2. df -ah

df -ah

# We have listed what is melted with df 
# Processes are melted on to the file

# The df command (short for disk free), is used to display information related to file systems about total space and available space. 
# If no file name is given, it displays the space available on all currently mounted file systems.
# This is something we might wanna know cause df command is not able to show the space available on unmounted file systems and the reason for this is that for doing this on some systems requires very deep knowledge of file system structures.

# There might come a situation while using Linux when we want to know the amount of space consumed by a particular file system on our LINUX system or how much space is available on a particular file system. 
# LINUX being command friendly provides a command line utility for this i.e df command that displays the amount of disk space available on the file system containing each file name argument.
# =================================
# All Absolute path start's with / i.e. the root

# Absolute path will work from everywhere in the system
# For Relative path we have to be in a specific directory

# In simple words, an absolute path refers to the same location in a file system relative to the root directory, whereas a relative path points to a specific location in a file system relative to the current directory we are working on.
