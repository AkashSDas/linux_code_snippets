# ###### Extra ######

# =================================
# read --> to take input from user
# =================================
!/bin/bash
# =================================
NUM_REQUIRED_ARGS=2
num_args=$#

if [ $num_args -lt $NUM_REQUIRED_ARGS ]; then
    echo "Not enough arguments. Call this script with
    ${0} <name> <number>"
    exit 1
fi
# =================================
# Set variables, using arguments

name=$1
number=$2
echo "Your first two arguments were: $1 $2"
# =================================
# for loop, iteration, string interpolation

echo "You ran thsi program with ${num_args} arguments. Here they are:"

# $@ --> all of the arguments
# Using quotes around $@ to separate things

for arg in "$@"; 
do
    echo "$arg"
done    
