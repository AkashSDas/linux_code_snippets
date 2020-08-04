# ###### Linux File Types ######

# =================================
# Types of file Linux knows

# - : regular file
# d : directory
# c : character device file
# b : block device file
# s : local socket file
# p : named pipe
# l : symbolic link

# s and p are just legacy they are not use so much now 

# regular file 
# link --> they are another kind of linux file 

dir 

# b --> block device files. e.g. --> brw-rw----
# c --> character device files. e.g. --> mouse and keyboard.  (crw-r-----)

# b files are the place where the linux driver communicates with the hardware
# c files are the place where the linux driver communicates with the mouse

# Character and block device files allow users and programs to communicate with hardware peripheral devices
# Block devices are similar to character devices. They mostly govern hardware as hard drives, memory, etc.
# Local domain sockets are used for communication between processes.
# S files are assembly language files. They are a form of machine code. It is at a low level of programming
# named pipes allow communication between two local processes. They can be created by the mknod command and removed with the rm command.
