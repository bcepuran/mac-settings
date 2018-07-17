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
if [ ! -f "env.sh" ]; then 
    echo "env.sh NOT FOUND - create one with the following data:"; 
    echo 'git config --global user.name "YOUR NAME"'
    echo 'git config --global user.email "YOUR EMAIL"';
    echo 'echo "finished updating global git user variables"';
fi

echo ""
echo "now run the following command to source all the relevant files:"
echo "     source ~/.bash_profile"