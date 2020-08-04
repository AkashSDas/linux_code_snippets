# ###### getting help via a man ######

# =================================
echo "Enter the command names separated by space:"
read commands

set $commands

for command in $*
do 
    man $command >> help.txt    
done
