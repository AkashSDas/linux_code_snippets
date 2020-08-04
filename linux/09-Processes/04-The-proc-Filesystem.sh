# ###### The /proc Filesystem ######

# =================================
# This is the intersection of processes and the filesystem
# The Linux kernel provides state of running processes in a virtual filesystem that is melted as proc 
# =================================
# 1.

ls -alh /proc 
# To know what is there in proc directory

# Each of the directory is a PID. 
# This is divided into directories that are named after PID, the processes that they described 
# =================================
# 2.

ls -alh /proc/1 
# 1 is the PID 

# We have be to be root to do that 
sudo -i 

cd /proc 
# =================================
# files that we can see

# file "cmd" will be what command the process is currently executing 
# "cmdline" how the process is called 
# "cwd", if we list that out, it will show us the link from where the process is executing 
# "environ" will show the enviroment variables
# "fd" --> file descriptor (FD, less frequently fildes) is an abstract indicator (handle) used to access a file or other input/output resource, such as a pipe or network socket.
# "maps" --> map file is a symbol table used by the kernel. A symbol table is a look-up between symbol names and their addresses in memory. ... map is required when the address of a symbol name, or the symbol name of an address, is needed. It is especially useful for debugging kernel panics and kernel oopses
# "statm" --> for memory 
# =================================
# 3. strace

strace
# This is a way to attach to admin and really see what they do

# If we are sysadmin professional we should know it 
# strace is a powerful command line tool for debugging and trouble shooting programs in Unix-like operating systems such as Linux. 
# It captures and records all system calls made by a process and the signals received by the process
