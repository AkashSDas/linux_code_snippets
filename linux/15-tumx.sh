# ###### tmux ######

# =================================
# tmux is a terminal multiplexer for Unix-like operating systems. 
# It allows multiple terminal sessions to be accessed simultaneously in a single window. 
# It is useful for running more than one command-line program at the same time.
# =================================
# ### Installing tmux ###
apt-get install tmux
# =================================
# ### Starting the tmux server ###
tmux 
# =================================
# ctrl-b <command>
# clrt + b --> it will tell that this command is for not shell it's for tmux

# Something like
# ctrl + b + c --> to create new window

# ctrl + b + , --> to rename the window

# To switch between windows that we are looking
# ctrl + b + p --> for previous
# cltr + b + n --> for next

# To list windows
# ctrl + b + w 

# To split the screen 
# For horizontally --> ctrl + b + %
# For vertically --> ctrl + b + : --> this gives the ability to give name commands to our tmux --> so to split horizontally --> split-window --> this command we will use

# To close the window 
# ctrl + d 
# =================================
# ### Creating sessions ###

# To create session 
tmux new -s <nameofsession>

# strat the top process
top 

# Now to detach from the session 
# ctrl + b + d 

# Now after detaching from the session top process is still running in the background
# We can check it by:
ps aux | grep top 

# logout will kill any ssh session, this would kill any process that has started in this ssh session
logout

# To reattach to that session 
tmux attach -t <nameofsession>
# =================================
# ### Shared Session ###

# This is a cheap way

# Both are having different ssh session
# This can be possible when different users that group in common with some finagling like by specifying some socket file 

# ==== user1 ====
tmux new-session -s thisisshared

# ==== user2 ====
tmux list-sessions

tmux attach -t thisisshared
