# ###### Internal Field Separator (I.F.S.) ######

# =================================
# Use the set command to set or unset values of shell options and positional parameters. 
# But how does linux decide which position should be given to which parameter?
# It does so by Internal Field Separator (I.F.S.)
# The default value of IFS is space character or tab
# =================================
line="Shell Scripting is taking a lot of time"

set $line

echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
echo $7
echo $8
# =================================
# Using the IFS

line="Shell Scripting is taking a lot of time"
IFS=:
# Entire line will be considered as first argument since the delimiter is the semi-colon(:)
# You will get blank lines due to echo statements
set $line
echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
echo $7
echo $8
# =================================
# Now changing the delimiter from space to semi-colon

line="Shell:Scripting:is:taking:a:lot:of:time"
IFS=:
set $line
echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
echo $7
echo $8
