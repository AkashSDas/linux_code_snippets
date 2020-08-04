# ###### Basic Commands ######

# =================================
# 1.

su --> Used to switch to root user(so that super user permissions can be used to execute commands)
su <username> --> Used to switch between different users
sudo --> Executes only that command with root/super user previliges
# =================================
# 2.
# ls commands options

ls --author --> this will list the contents in the specified directory along with its owner
ls -S --> this will sort and list all the contents in the specified directory by size
ls *.<extension> --> * flag is a regular expression character which means 0 or more, So anything.<extension> will be listed
# =================================
# 3.
# cd

cd 'xx yy' --> We speciy the folder name in inverted commas because there is a space in the folder name
# =================================
# 4.
# cat

cat -b <filename> --> This is used to add line numbers to non blank lines
cat -n <filename> --> This is used to add line numbers to all lines
cat -s <filename> --> This is used to squeeze blank lines into one line
cat -E <filename> --> Show $ symbol at the end of line
# =================================
# 5.
# grep

grep <tofind> <filename> --> Return result for matching string tofind
grep -i <tofind> <filename> --> Return result for case insensitive string
grep -n <tofind> <filename> --> Return result for matching string along with their line number
grep -v <tofind> <filename> --> Reuturn result of lines not matching the search string
grep -c <tofind> <filename> --> Return number of lines in which the results matched search string
# =================================
# 6.
# sort

sort <filename> --> Sorts the content of file and returns them in alphabetical order
sort <filename> <otherfilename> --> Sorts the contents of both the files
sort -r <filename> --> Returns the result in reverse order
sort -f <filename> --> It does case insensitive sorting
sort -n <filename> --> It sorts in numerical order
# =================================
# 7.
# cp

cp -i <filename> <destination> --> Enters interactive mode, CLI asks before overwriting files
cp -n <filename> <destination> --> Does not overwrite the file
cp -u <filename> <destination> --> Updates the destination file only when source file is different from destination file
cp -R <filename> <destination> --> Recursive copy for copying directories, Copies even hidden files
cp -v <filename> <destination> --> Verbose, Prints informative messages
# =================================
# 8.
# mv

mv -i <filename> <destination> --> Enters interactive mode, CLI asks before overwriting files
mv -u <filename> <destination> --> Updates the destination file only when source file is different from destination file
mv -v <filename> <destination> --> Verbose, Prints source and destination files

# To rename a file we can replace <destination> with <newfilename>
mv <oldfilename> <newfilename>
# =================================
# 9.
# mkdir

mkdir -p --> Creates both a new parent directory and a sub-directory
# Example: mkdir -p Folder1/Folder2

mkdir --parent --> It is also used for the above purpose
mkdir -p file1/{f2, f3, f4} --> To create multiple sub-directories inside the new parent directory (that is file1 here)

# To create multiple directories
mkdir file1 file2 ..... filen
# =================================
# 10.
# rmdir

# rmdir removes only non-empty directories

rmdir -p --> Removes both parent and child directory
rmdir -pv --> Removes all parent and sub-directories along with Verbose
rm -r --> Removes even non-empty directories
rm -rp --> Removes non-empty directories including parent and sub-directories
