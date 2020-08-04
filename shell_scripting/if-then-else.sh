# ###### if-then-else statement in action ######

# =================================
# Script to rename a file 

echo "Enter source and target file names:"
read source target

if mv $source $target
then 
    echo "Your file has been successfully renamed"
else
    echo "The file could not be renamed"
fi

# If file does not exists we will get an error message due to mv command and then the error message in else block will be displayed
