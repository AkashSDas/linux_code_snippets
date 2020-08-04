# ###### Creating User ######

# =================================
# For user 

# To add new user
useradd <username>

# To set password for that user 
passwd <username>

# To delete the user
userdel <username>
# =================================
# For group

# To add a new group
groupadd <groupname>

# To delete a group
groupdel <groupname>

# Adding a user to primary group
usermod +g <groupname> <username>
