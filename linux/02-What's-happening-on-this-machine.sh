# ###### What's going on this machine ######

# =================================
# 1. Who is sitting on this machine

# To see more information
w

# To see less information
who
# This is good to see whose logged in, from where, how long, what they are doing right now on our machine
# =================================
# 2. Simple way to moniter process
top

# To kill process we need Process ID, which we will get in PID column
# =================================
# 3. To have some handle on the network, to see what port is opening and listing and know what's going on

netstat -tupln

# (tupln ==> the order doesn't matter)
# (There are many other options also)
# (t ==> TCP, u ==> UDP)

# Other Parameters
# Parameter	    | Description
# -------------------------------------
# –a	          | Displays all connections and listening ports
# –e	          | Displays Ethernet statistics
# –n	          | Displays addresses and port numbers in numerical form instead of using friendly names
# –s	          | Displays statistics categorized by protocol
# –p protocol	  | Shows connections for the specified protocol, either TCP or UDP
# –r	          | Displays the contents of the routing table
# interval	    | Displays selected statistics, pausing interval seconds between each display; press [Ctrl]C to stop displaying statistics

# (p ==> programmes attached to that port, l ==> listening ports, n ==> nummeric address)

# PID/Program name 
# The above column will be missing 
# Because we ran the command without super user previleges

# So if ran it as root we will geet more information Because root can look a little bit depeer on what's going on inside our machine
sudo netstat -tupln
# This will give more information
