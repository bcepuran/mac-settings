cp .aliases ~ 
cp .bash_profile ~ 
cp .bash_prompt ~ 
cp .bashrc ~ 
cp .gitconfig ~ 
cp .gitignore ~ 
cp .gitignore_global ~ 
cp .path ~ 
cp .stCommitMsg ~ 

if [ -f "./env.sh" ]; then sh env.sh && echo "env.sh FOUND - executing bash script"; fi 
if [ ! -f "env.sh" ]; then echo "env.sh NOT FOUND"; fi

echo ""
echo "now run the following command to source all the relevant files:"
echo "     source ~/.bash_profile"