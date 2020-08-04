# ###### Working with Linux Repository ######

# =================================
# To intall the stable versions which are available in Linux Repository commands are

# For RHEL based systems
sudo yum install <package_name>

# For Debian based systems
sudo apt-get install <package_name>

# For Fedora based systems
sudo dnf intall <package_name>
# =================================
# Example: Java 8 Installation in RHEL based systems

sudo yum update 
sudo yum install java-1.8.0-openjdk
update-alternatives --config java # For selecting from various java versions
cd
sudo gedit .bashrc
# Set enviroment variables here 
source .bashrc
