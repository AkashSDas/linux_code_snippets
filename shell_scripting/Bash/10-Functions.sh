# ###### Functions ######

# =================================
# read --> to take input from user
# =================================
!/bin/bash  
# =================================
# Two ways of defining a function
# =================================
# ### First way ###

spaced() {
    # parameters are not named; they are positional
    echo 
    echo "##############################"
    echo "$1"
    echo "##############################"
    echo
}

# In shell-scripting/linux we can't use arguments like function_name(args1,arg2) neither we call them like that.
# We use $1, $2 and so on to access the arguments

spaced "Hello"
# =================================
# ### Second way ###

function javatest() {
    # testing and conditionals
    if [[ $number -eq 99 ]]; then
        spaced "You win! You guessed the secret number! It's amazing"
    elif (( $number < 10 )); then
        spaced "You're a courageous one. I like that about you. Unfortunately. you must still DIEE"
        
        # set a variable interactively
        echo "Hi ${name}, to avert a horrible death, please enter the password:"
        read password
        
        if [[ "$password" != "Java" ]]; then
            spaced "Well, at least you're not a Java Programming sympathizer. You can go now."
        else
            spaced "DIIIIEEEEEE! Acutally, nevermind. Writing Java is enough of hellish punishment. You are free to leave. Take a biscuit on the way out"
        fi 
    fi 
}

# calling a function 
javatest $number
# =================================
exit 0
