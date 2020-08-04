# ###### Creating Functions ######

# =================================
# We cannot run scripts having function using the sh command
# The reason is that the shell invokes the subshell and the run the script. So the functions and variables declared by the script are not accessible from the shell that has invoke the subshell

# To run such script
# ./<script_name>
# =================================
greeting()
{
    echo "Hello there"
}
# =================================
# Unlike normal functions we don't pass arguments while defining functions

greeting_to_someone()
{
    echo "Hello $1"
}

# In command line we use this function as --> greeting_to_someone James
# Output will be --> Hello James
# =================================
greeting_day()
{
    echo "$1 $2 to $3"
}
