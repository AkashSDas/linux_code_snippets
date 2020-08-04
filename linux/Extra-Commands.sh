# ###### Extra-Commands ######

# =================================
# ### uname ###

uname

# The uname command reports basic information about a computer's software and hardware. 
# When used without any options, uname reports the name, but not the version number, of the kernel (i.e., the core of the operating system).

uname -a

# a --> all
# =================================
# ### file ###

file <file_name>

# file command is used to determine the type of a file. .file type may be of human-readable(e.g. ‘ASCII text’) or MIME type(e.g. ‘text/plain; charset=us-ascii’).

file *
# It gives alot of information of all files in the current directory
# =================================
# ### dd ###

# It is also jokingly said that dd stands for "disk destroyer" or "delete data", since when used for low-level operations on hard disks, a small mistake such as reversing the input file and output file parameters could result in the loss of some or all data on a disk.

# dd is used for conversion and copying files

dd if=<file_name> of=<new_filename> conv=ucase

# if --> input file
# of --> output file
# conv --> convert
# ucase --> uppercase
# ---------------------------------
# We can also use dd to convert file from one type to other type

# Like converting from ASCII to european encoding characters
dd if=<file_name> of=<new_filename> conv=ebcdic
# =================================
# ### compress and uncompress ###

compress -v <filename>

# But now we can't view file content by using the cat command, it will print non readable characters
# So we have to use --> zcat
zcat <file_name>
# ---------------------------------
# To uncompress the file
uncompress <file_name>
# =================================
# ### View System Calender ###

cal 
# It gives calender of present month
# ---------------------------------
# If we want see calender of any other month in any other year 

cal <month_number> <year>

cal 4 2001
cal 7 2030

# We can also do like this
cal <month_name> <year>

cal feb 2010
cal april 2020
cal apr 2020

# It can take full month name as well as month's initals
# =================================
# ### View System Date ###

date
# It gives a lot of detail of date of our system 
# ---------------------------------
# To view date in custom format

# date '+<our_format>'

# Example:
date '+DATE:%m-%y%nTIME:%H:%M:%S'

# %m - month 
# %y - year
# %n - new line 
# %H - Hour
# %M - Minute
# %S - Second
