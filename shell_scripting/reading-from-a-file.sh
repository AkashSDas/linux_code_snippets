# ###### Reading from a file ######

# =================================
echo "Enter a file name:"
read file_name

if [ -z "$file_name" ]
then 
    exit
fi 

# tty command contains current terminal settings
# As per GeeksForGeeks
    # tty is short of teletype, but popularly known as a terminal it allows us to interact with the system by passing on the data (our input) to the system, and displaying the output produced by the system.
    
# Assing the setting to variable terminal and since tty is a command therefore it is written inside ``
terminal=`tty`

# Changing the input stream with exec

# As per GeeksForGeeks:
    # exec command in Linux is used to execute a command from the bash itself. This command does not create a new process it just replaces the bash with the command to be executed. If the exec command is successful, it does not return to the calling process.
    
exec < $file_name

count=1
while read line
do 
    echo $count.$line
    count=`expr $count + 1`
done

# To restore the oringinal setting back 
exec < $terminal
