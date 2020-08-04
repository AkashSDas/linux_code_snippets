# ###### Filesystem Layout ######

# =================================
# 1. /

ls /
# =================================
# We have to put things at correct places. 
# But it is not what we must to do but it is a good practice
# =================================
# 2. /etc 

# /etc - Usually contain the configuration files for all the programs that run on our Linux/Unix system

ls /etc 

# This is first place where we will go to see how something is configured 
# ---------------------------------
# 3. /sbin

# /sbin - it is a standard subdirectory of the root directory in Linux and other Unix-like operating systems that contains executable (i.e., ready to run) programs. 
# They are mostly administrative tools, that should be made available only to the root (i.e., administrative) user

ls /sbin

ls /sbin | less 
# =================================
# 4. /bin

# Bin is an abbreviation of Binaries. 
# It's just a directory where a user of an operating system can expect to find applications.
# It contains essential binary files (unlike /usr/bin directory) also for booting. 
# It usually contains the shells like bash and commonly used commands like cp , mv , rm , cat , ls .

ls /bin 

ls /bin | less

ls -alh /bin | less 

# bin also has links that is software is installed somewhere else but bin still has the link to that place where it lives 

ls /bin | grep rmdir
# =================================
# 5. /tmp 

# The /tmp directory contains mostly files that are required temporarily
# It is used by different programs to create lock files and for temporary storage of data. On all if not most Linux systems, the contents of the /tmp directory are deleted (cleared out) at boot time or at shutdown by the local system.

ls /tmp 
# We will probably find ourselves clearing data from here 
# =================================
# 6. /home

# Home Directory Definition:
#     A home directory, also called a login directory, is the directory on Unix-like operating systems that serves as the repository for a user's personal files, directories and programs.
#     It is also the directory that a user is first in after logging into the system.

ls /home 
# =================================
# 7. /root

# root is the user name or account that by default has access to all commands and files on a Linux or other Unix-like operating system. It is also referred to as the root account, root user and the superuser.

ls /root
# If we are not the root then permission will be denied
# =================================
# 8. /lib

# The lib folder is a library files directory which contains all helpful library files used by the system. 
# In simple terms, these are helpful files which are used by an application or a command or a process for their proper execution. 
# The commands in /bin or /sbin dynamic library files are located just in this directory.

ls /lib64
# Thses are libaries that lot of system can use and deals with lot of functionality 

ls /lib 
# =================================
man hier 
# This can be helpful
# =================================
# Stick to the convention of where to put things. Othewise it can be very messy
# =================================
# 9. /boot 

ls /boot 

# A Linux boot process is the initialization of the Linux open source operating system on a computer. 
# Also known as the Linux startup process, a Linux boot process covers a number of steps from the initial bootstrap to the launch of the initial user-space application.

# In Linux, and other Unix-like operating systems, the /boot/ directory holds files used in booting the operating system. 
# =================================
# 10. /dev 

ls /dev 

# /dev is the location of special or device files
 
# It is a very interesting directory that highlights one important aspect of the Linux filesystem - everything is a file or a directory. 
# This file represents our speaker device. Any data written to this file will be re-directed to our speaker.

ls /dev | grep sd 
# It will list all hardisk 

# A magnetic disk on which we can store computer data
# =================================
# 11. /media

ls /media

# /media – Removable Media
# The /media directory contains subdirectories where removable media devices inserted into the computer are mounted. 
# For example, when we insert a CD into our Linux system, a directory will automatically be created inside the /media directory.

# In most system it is mnt but we have this media 
# The /mnt directory and its subdirectories are intended for use as the temporary mount points for mounting storage devices
ls /mnt
# =================================
# 12. /opt 

ls /opt
# /opt is for “the installation of add-on application software packages”
# =================================
# 13. /usr 

ls /usr | less 

# The /usr directory consists of several subdirectories that contain additional UNIX commands and data files. 
# It is also the default location of user home directories.

ls /usr | wc -l 

ls /usr/bin | less 
ls /usr/sbin | less 

# Things that are common to users 
ls /usr/share | less 
# =================================
# 14. /var 

ls /var 

# var --> variable
# /var is a standard subdirectory of the root directory in Linux and other Unix-like operating systems that contains files to which the system writes data during the course of its operation.

ls /var/log 
# It has all system logs in it 

# In short /var/log is the location where we should find all Linux logs file. 
# However, some applications such as httpd have a directory within /var/log/ for their own log files. 
# We can rotate log file using logrotate software and monitor logs files using logwatch software
