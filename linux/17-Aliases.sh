# ###### Aliases ######

# =================================
# A shell alias is a shortcut to reference a command. 
# It can be used to avoid typing long commands or as a means to correct incorrect input.
# =================================
ls -lra

# Now lets say we want a command --> lr --> which can do same work as --> ls -lra

# To check if something is in our alias
alias
# We will get every alias in our enviroment

alias | grep lr 

alias lr="ls -lra"

lr 
# Now we get the same output as we got by entering the --> ls -lra --> command

alias | grep lr 
# Now we will see that lr 
# =================================
# When we open a new shell session, we will see that the lr command will not work
# This tells that the alias is not persistent

# For bash shell
nano .bashrc
# Go to the alias part 

# Set the variable at the end 
alisa lr="ls -lra"

# Now our alisa is persistent
# =================================
# How to unset the alisa

unalias lr 

lr 
# =================================
# This thing is useful only in single shell enviroment
