# ###### Regular Expressions ######

# =================================
# Regular Expressions (RegEx) are used to create patterns
# It can be piped along with grep command to find patterns of text in the file
# =================================
# ### Some symbols ###

# Symbol    | Explation
# =================================
#   .       | Replaces any character
#   ^       | Matches the start of the string
#   $       | Matches the end of the string
#   *       | Matches the preceding character 0 or more times
#   ?       | Matches the preceding character 1 or more times
#   ()      | Groups regular expressions
#   \       | Represents special characters
# =================================
# ### Examples ###

cat file1.txt | grep ^a
cat file1.txt | grep '$a' # $a inside quotations, since $ has other meaning in Linux
grep 'a*'
echo {a..z}
echo {a...z}
echo {33..89}
echo a{33..89}p
grep 'a[0-9]x' file1.txt
ls | grep '[xt$]'
grep ['d.d'] file1.txt
grep -n ['a*'] file1.txt
ls | grep 'le[0-9].txt'
echo {4..45}
echo 1{a..z}9
