# ###### Linux File Permissions ######

# =================================
# r --> read 
# w --> write
# x --> execute 
# These are Permissions for someone to access a file 
# =================================
# Examples of how Permissions looklike
drwxrwxrwx
-rw-r-x-r--

# Here d at the beginning represents that it is a directory, - at the beginning is for file 
# =================================
# 1. To change the file mode 

chmod 777 <filename>
# Change mode 
# This 7 is octal notation (0,1,2,3,4,5,6,7)
# 0 = --- 
# 4 = r-- 
# 6 = rw- 
# 7 = rwx  

# First 7 denotes --> this owner can do anything with the file 
# Secod 7 denotes --> the owners group can do anything
# Third 7 denotes --> any other person can do anything
# =================================
# 2. To chmod automatically 

# We have to write command :
<text_editor_name> /etc/login.defs 

# Then search for UMASK, i.e. is usermask
# It is mask that is put on file permission 
# We change it to permissions that we want 
# =================================
# 3. If we are working with a directory and set permissions to that directory

chown <owner>:<groupname> <dirname>
# =================================
# 4.
# Denotions 

# Users --> u
# Groups --> g
# Others --> o
# All --> a
# =================================
# 5.

# chmod --> To change the access permissions of files and directories
# chown --> To change the owner of files and directories
# chgrp --> To change the group ownership of file and directories

# Examples for chmod:
chmod g+wx <dirname>
chmod u=rwx, o-wx <dirname>

chown <owner> <dirname>
chown <owner>:<groupname> <dirname>

chgrp <groupname> <dirname>
