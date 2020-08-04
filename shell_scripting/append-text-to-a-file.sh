# ###### Append text to a file through shell script ######

# =================================
echo "Enter the file name:"
read file_name

if [ -f $file_name ]
then
    if [ -w $file_name ]
    then 
        echo "Type the content to append. To quit press ctrl+d"
        cat >> $file_name
    else
        echo "You do not have permission to write"
    fi 
else
    echo "Sorry the file was not found"
fi
