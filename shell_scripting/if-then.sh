# ###### if-then statement in action ######

# =================================
# Script to rename a file 

echo "Enter source and target file names:"
read source target

if mv $source $target
then 
    echo "Your file has been successfully renamed"
fi
