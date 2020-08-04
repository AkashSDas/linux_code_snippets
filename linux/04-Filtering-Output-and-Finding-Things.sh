# ###### Filtering Output and Finding Things ######

# =================================
# 1. && operator

prog1 && prog2

# Example
ls file.txt && echo "file exists"
# =================================
# 2. cut 

# If we have some pattern in a file and want to divide some field of it then cut command is very useful

cat file.txt | cut -d: -f2

# Here cut takes content of file.txt as input
# d --> delimtter , here it is semi-colon(:)
# f --> field, here it is second field

# Example:
# If in a file named file.txt we have
dave:we
user:love
someone:linux

cat file.txt | cut -d: -f2
# By using the above command the results will be 
we
love
linux 
# =================================
# 3. sort 

cat file.txt | sort -bf

# b ---> ingnore white space
# f ---> case insensitive

# The reult will be 
dave:we
someone:linux
user:love
# =================================
# 4. uniq

# If the files have duplicates 
dave:we
user:love
someone:linux
someone:linux

cat file.txt | uniq
# This uniq(unique) will give unique only

# Result 
dave:we
user:love
someone:linux

# While just using 
cat file.txt
# The result will be
dave:we
user:love
someone:linux
someone:linux
# =================================
# 5. word count

wc file.txt

# Result
4 4 46 file.txt 
# =================================
# 6. grep 

# It is a searching, finding, filtery tool 
# ---------------------------------
cat file.txt | grep user

# Result 
user:love
# ---------------------------------
cat file.txt | grep someone

# Result
someone:linux
someone:linux

# It gives duplicate results also 
# ---------------------------------
# But we can also search files 

gerp someone file.txt 

# Result
someone:linux
someone:linux
# ---------------------------------
# It can be very useful to search something in the filesystem
# ---------------------------------
grep someone ./*
# It will search "someone" the word in every file in current directory 
# ---------------------------------
# If we don't want duplicate files 
grep someone ./* | uniq 
# ---------------------------------
# If we want to cut using a delimiter
grep someone ./* | uniq | cut -d: -f1
# This will give unique filename which have word "someone"
