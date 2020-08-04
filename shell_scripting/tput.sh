# ###### tput-in action ######

# =================================
# To clear the terminal
tput clear

echo "Total number of rows on screen="
tput lines

echo "Total number of columns on screen="
tput cols

# To position the curser at a location
# tput cup <row_number> <column_number>
tput cup 15 20

# To make tput to print in bold
tput bold
echo "This should be bold"

# To return to normal mode printing
echo "\033[0mBye Bye"
