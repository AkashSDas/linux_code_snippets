# ###### State, Niceness and How to Monitor Processes ######

# =================================
# States:
# 1. runable --> that is something that is elgible to be schedule for CPU time. It has all the information it need to run then Next time CPU has free time it is runned
# 2. sleeping --> process waiting for something
# 3. zombie --> process that has finished whatever it was doing and it's waiting to give back information that it come up with and is killed by the kernel
# 4. stop --> it is a process made have been in the middle doing something but because of some other process sending the stop signal to or even we can send stop signal through the terminal and it is waiting for the continue signal to pickup from where it leftoff

# A zombie process is a process whose execution is completed but it still has an entry in the process table. 
# Zombie processes usually occur for child processes, as the parent process still needs to read its child's exit status. This is known as reaping the zombie process
# =================================
# To monitor process 
top 
# It automatically sorts by percent of CPU used, The most CPU time is at the top 
# =================================
# When we hit F9 whatever process we selected will stay selected
# We will get Send Signal Options 
# And select and hit enter to the signal that we want to send 
# =================================
# A few of the signals are:
# SIGKILL --> it just murder's the signal 
# SIGTERM --> it allows the signal to turnoff nicely
# =================================
# The NI column tells the Niceness of the process 

# Niceness as per Wikipedia:
# nice is a program found on Unix and Unix-like operating systems such as Linux. It directly maps to a kernel call of the same name. nice is used to invoke a utility or shell script with a particular CPU priority, thus giving the process more or less CPU time than other processes. A niceness of -20 is the highest priority and 19 is the lowest priority. The default niceness for processes is inherited from its parent process and is usually 0.
# ---------------------------------
# 1. nice 
nice -n 15 <task>
# ---------------------------------
# 2. renice 
renice -5 <PID>
# To change the niceness of a prrocess

# Don't set something as maximum or minimum nice 

# We can change the niceness by selecting the process in top and using F8 we can modifie the niceness
