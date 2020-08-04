# ###### helpers ######

# =================================
# AND Operator --> &&
# OR Operator  -->  ||
# =================================
# In our terminal
echo "hi" || echo "This won't happen"
$(ls nonexitentfile) || echo "This happens if the first thing fails"
echo $(pwd) && echo "This ALSO happens!"
echo $(ls nonexitentfile) && echo "This ALSO happens!"
