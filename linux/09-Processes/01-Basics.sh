# ###### Process Basics ######

# =================================
# Processes --> basically a program that runs
# An instance of a program is called a process

# Any command given to Linux starts a new program
# There can be multiple processes(instances) of the same program
# =================================
# Process has two parts:
#     1. address space that it can use, where it can write to 
#     2. kernel data structure keeping following information:
#         - PID             --> primary key for processes 
#         - parent id       --> PID of process that started this one, if parent dies then child process is reparented to "init" process 
#         - UID             --> tell which user owns the process (same for groupID)
#         - EffectiveUserID --> (EUID) process spawned by user but shouldn't have permissions as user (EgroupID)
#         - Niceness        --> if NI is high then it's low priority and let's lower NI processes take resources
# =================================    
# Life cycle of a process --> created by parent process by forking itself, giving child that starts other program/processes 
# death                   --> exiting with return value given to parent process 
# =================================
# case of init (for ubuntu) --> started at kernel boot, runs all startup scripts
