# ###### file and directory testing ######

# =================================
echo "Enter a file name:"
read file_name

# To check the name that has been given is a name of a file we use -f
if [ -f $file_name ]
then 
    echo "Your file exists"
else
    echo "Your file does not exists"
fi 
# =================================
echo "Enter a directory name:"
read directory_name

# To check the name that has been given is a name of a directory we use -d
if [ -d $directory_name ]
then 
    echo "Your directory exists"
else
    echo "Your directory does not exists"
fi 
# =================================
# To check for character special file --> -c
# To check for block special file --> -b

# To check we have permission to file:
#     for read --> -r
#     for write --> -w
#     for executing --> -x

# To check if the size of the file is greater than 0 or not the use --> -s
# ============================
# To check if file is empty or not

echo "Enter a file name:"
read file_name

if [ -s $file_name ]
then 
    echo "The size of the given file is greater than zero"
else
    echo "The given file is empty"
fi 
