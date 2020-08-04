# ###### tar ######

# =================================
# ### Quick Overview ###

# Commands to compress and decompress files in Linux:
#   1. gzip --> To compress files with .gz format
#   2. gunzip --> To decompress .gz files
#   3. tar --> To compress and decompress files with .tar format

# Most commomly used commands

# Compressing files to tar format
tar -cvf <tar_filename> <filename>

# Extracting/Decompressing files in tar format
tar -xvf <tar_filename>
# =================================
# The tar command stands for tape achieve, which is the most commonly used tape drive backup command used by the Linux/Unix system. It allows for us to quickly access a collection of files and placed them into a highly compressed archive file commonly called tarball, or tar, gzip, and bzip in Linux.

# An archive file is a file that is composed of one or more computer files along with metadata. Archive files are used to collect multiple data files together into a single file for easier portability and storage, or simply to compress files to use less storage space.

# Compression is the act of shrinking the size of a file, which is quite useful in sending large files over the internet.

# What is the difference between archiving and compressing? Archiving is the process of collecting and storing a group of files and directories into one file. The tar utility performs this action. Compression is the act of shrinking the size of a file, which is quite useful in sending large files over the internet.

# A GZ file is an archive file compressed by the standard GNU zip (gzip) compression algorithm. It contains a compressed collection of one or more files and is commonly used on Unix operating systems for file compression.

# tar.gz file format is a combination of TAR packaging followed by a GNU zip (gzip) compression. It is commonly used in Unix based operating systems. This type of files can contain multiple files and most often they come as package files, programs or installers.
# =================================
# Compressing and Archiving

tar zcvf docs.tar.gz Documents/

# f is the last one in the argument because f has its own argument and that is the filename, filename for the archive 
# f first argument is new filename and second argument is the filename which we are archiving
# v --> we are going to get one line of ouput for each file that we are archiving and compressing 
# c, --create --> Create a new archive.
# z --> its for ziping, it for g ziping

# We are compressing with z and archiving them that is creating one file from many files and directories
# We can give docs.tar.gz any extension but it is good to give tar so that they know what they are unziping

# In remote machines, if we are doing something large archiving and compression then leave the v argument, because if we have slow connection then it will take a long time to list things

ls 

mkdir decompression_chamber

mv docs.tar.gz decompression_chamber/

cd decompression_chamber/
# =================================
# Unarchiving and decompressing our docs.tar.gz 

tar -zxf docs.tar.gz 

# We can also do:
tar -zxvf docs.tar.gz 
# Agian --> In remote machines, if we are doing something large archiving and compression then leave the v argument, because if we have slow connection then it will take a long time to list things

# x --> extract

du -sh Documents

ls -alh
# =================================
# What is a bad practice, what we should not do is creating a Creating a tarbomb

cd Documents

ls 

tar -zcf tarbomb.tar.gz .
# Instead of pointing to some inner directory we are saying point to this directory and creating tarbomb in same directory
# This won't work

tar -zcf ../tarbomb.tar.gz .
# Instead of pointing to some inner directory we are saying point to this directory and creating tarbomb in one directory above the directory in which we are in 

# tarbomb is a directory that is compressed as if we are sitting on that directory
# A tarbomb, also sometimes written as tar bomb, is a tarball whose contents appear to explode into the current directory or some other existing directory containing a large number of items when untarred rather than into a new directory created by the tarball specifically for such contents

# The idea is if we are going to create an archive generally we want to do it just from the outside of some kind of containig directory so that someone who decompresses and unarchives the file doesn't explodes

# Don't create tarbomb
# Always compress from outside

tar -zcvf nice.tar.gz Documents/
# This is good practice 
# So that someone compresses it doesn't have another Documents directory
