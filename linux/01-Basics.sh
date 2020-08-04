# ###### Basics ######

# =================================
# ### Root/Home directory ###
# It is represented by a slash(/)
# ---------------------------------
# 1. print working directory

pwd
# To see where we are in the system
# This command prints the current working directory
# ---------------------------------
# 2. list

# To see what is in the directory where we are currently
ls

# To see what is in a particular directory
ls <directoryname>
# ---------------------------------
# 3. change directory

cd <path-to-directory>
# To change to the directory where we want to go
# ---------------------------------
# 4. Clear

clear
# To clear our terminal
# ---------------------------------
# 5. Up/Back

# This will take us one directory above the current directory
cd ..

# Single dot(.) means that the directory that we are currently in
# Double dot(..) means one directory above the current directory that we are in
# =================================
# ### List ###
# List(ls) shows what's in our directory
# There are flags/arguments to make our commands more specific
# ---------------------------------
# 1. To see hidden files

ls -a
# the flag 'a' represents everything
# Any file whose name starts with dot(.) is a hidden file
# ---------------------------------
# 2. To go to the home

# There are various ways to do that 
cd ~
cd 
# ---------------------------------
# 3. Creating a new file

# We use the touch command to create a new file
touch <filename>
# It creates empty file
# ---------------------------------
# 4. To read a file
cat <filename>
# ---------------------------------
# 5. To create a directory
mkdir <directoryname>
# ---------------------------------
# 6. To move something
mv <what> <where>
# ---------------------------------
# 7. To remove a file
rm <filename>
# ---------------------------------
# 8. To remove an empty directory
rmdir <directoryname>
# NOTE: This will remove empty directories only
# ---------------------------------
# 9. To remove any directory
rm -r <directoryname>
# r means recursively
# ---------------------------------
# 10. To check for help with commands
man 
# It stands for mannual 

# Examples:
man mv
man rm
# ---------------------------------
# 11. *** Famous Linux Command ***
rm -rf /
# It will recursively force to delete everything from our filesystem from the root, leaving us with empty system
# =================================
# ### Other Basic Commands ###

# 1. Use Cltr + a to go to start of a line
# 2. Use Cltr + e to go to end of a line
# 3. If we put # in at the beginning of what we write, it will not be executed, it is basically commented
# ---------------------------------    
# 4. To navigate through lines.

#    - Up and Down Keys
#    - Cltr + p  (p ==> previous)
#    - Cltr + n  (n ==> next)
#    - Cltr + r  (this is a better, for reverse history search and then type what we want if we can't find it, do Cltr + r again. If we can't find it and want to escape use Cltr + c)
# ---------------------------------    
# 5. To create a link to the file

ln -s <filename> <linkname>
# Here we are not creating a duplicate file, we are creating pointer to that file
# We can use this, when we create a file and different people can access it

# To check
ls -l
# ---------------------------------
# 6. head

# It will give us first 10 lines 
head <filename>
# ---------------------------------
# 7. tail

# To see the end of the file
tail <filename>

tail -f <filename>
# When we hit enter, this will not be executed, because it is staying attached to the file and if anything is added to the file we can see it in real time. But for this we have to save file than only we can see it
# ---------------------------------
# 8. To exit

Cltr + d
# This will end our shell session
# ---------------------------------
# 9. To shut our computer

shutdown -r  # (r ==> restart)
shutdown -h  # (h ==> halt)
# Adding a time argument
shutdown -h now
shutdown -h +60 # (this would be an hour)
poweroff
init 0  # (this is to do with run levels, it is an alternative to poweroff)
inti 6  # (to reboot)
# =================================
# ### Extra Basics ###

# ---------------------------------    
# 1. To copy files

cp <filename> <newfilename>
# We can also change the extension
# ---------------------------------    
# 2. Arguments of list

ls -alh
# a ==> shows hidden files and folders
# l ==> long listing, it shows us the permissions, ownerships and sizes
# h ==> to make it in human readable form
# ---------------------------------        
# 3. To cancatenate two files

cat <filename> <otherfilename>

# Example:
cat test.txt testcopy.txt
# ---------------------------------    
# 4. To move something

mv <somelocation> <someotherlocation>

# If we don't specific location it will rename the file 
mv <filename> <newfilename>
# That is if we move a file without any slash(/) it will rename the file
