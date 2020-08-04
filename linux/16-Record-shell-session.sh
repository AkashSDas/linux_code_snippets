# ###### Record shell session ######

# =================================
# ### Common Uses ###

# - Documentation
# - Proof
# - Troubleshooting
# =================================
# To start script
script
# File will be typescript by default

# Doing things while script has started

echo "hello there"

# This is in the terminal

# We can do task and then hit --> Cltr + d --> to stop script or we can type --> exit --> to stop
# ---------------------------------
ls

less typescript
# =================================
# Renaming the script file
script myscript.log
# =================================
# ### Real-Time Recording ###

# - Same script command
# - Delicious real-time playback
# - still calorie-free

# ---------------------------------
script myscript.log --timing=time.log

# We are passing the timing argument to tell it where to keep the timing log
# After doing our task and hitting the Cltr + d or typing exit command
# ---------------------------------
# Replaying the script
scriptreplay -s myscript.log --timing=time.log
# ---------------------------------
# We can also do it this way 
scriptreplay -s myscript.log -t time.log
# =================================
# ### Timestamp file ###

less time.log
# =================================
# ### Using the c option ###

# c --> let's us to execute single command and let us to save the output into a log file
script -c 'netstat -tupln' netstat.log

# We have to put --> netstat tupln --> inside the quotes otherwise it will run the commands

# This can be useful if we are running the script from a shell/script file
# If we need the record of output of some command and we don't want to write it into the script with STDOUT or STDERROR or whatever then this is one way to do it

# We don't want to run script interactively without the -c in an non-interactive shell/script file because this will hang the script, it keep listing for a input for a very very long time and our shell script will never stop
