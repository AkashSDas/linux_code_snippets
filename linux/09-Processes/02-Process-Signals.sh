# ###### Process Signals ######

# =================================
# Signals can be send by kernel
# Signals are how process communicate with each other and how kernel gets information of the state of hardware and state of system
# PID --> Process ID
# =================================
# 1. kill

kill <PID>
# kill command in Linux (located in /bin/kill), is a built-in command which is used to terminate processes manually
# =================================
# 2. interupt
Clrt + c 
# =================================
# 3. halt

Cltr + z 
# halt instructs the hardware to stop all CPU functions.
# =================================
# 4. killall

killall <processname>
# It will kill all processes that strat with processname

# killall is a tool for terminating running processes on our system based on name. 
# In contrast, kill terminates processes based on Process ID number (PID). 
# kill and killall can also send specific system signals to processes.
# =================================
# 5. pkill

pkill -u <username>
# To kill all processes running as username

# pkill Command – Send signal to the process based on its name
# We can send signal to any process by specifying the full name or partial name. 
# So there is no need for us to find out the PID of the process to send the signal.
