# ###### Bash Basics ######

# =================================
echo "hello world"

echo "hello world" > testfile.txt 
cat testfile.txt
echo "hello universe" >> testfile.txt 
cat testfile.txt
# =================================
# Content in file.txt

# This is a file
# This is line 2
# some text
# boodles
# boodles
# hurdles
# notboodles
# orisit boodles?
# I think it is!
# It's boodles, that is!
# Indeed.
# 
# =================================
cat file.txt 
wc -l < file.txt 
cat file.txt | wc -l 
(cat file.txt | wc -l)
(cat file.txt | wc -l) && echo "Done!"
# =================================
# Some non existing file
ls jkfdkfdj && echo "Error"
# This will give an error 
# =================================
# Some non existing file
ls jkfdkfdj || echo "Error"
# This will give an error and then print the Error String 
# =================================
# Some non existing file

# If we want standard error and standard output
ls kjfkdfn >& error_log.txt 

ls lfijrjf 2> error_log.txt
ls jukhr 2>> error_log.txt 
