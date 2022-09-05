#--setup

#note: scripts probably wont work properly
#      unless you run these commands beforehand
#sudo chmod +755 runner.sh script.sh
#sudo chsh -s /bin/zsh $USER
#zsh

#----------------------------
#--installation

#requirements: git and zsh packages installed
#sudo apt install git
#sudo apt install zsh

# moving to root directory
cd ~

#installing zsh in case it isnt already
sudo git clone https://www.github.com/ohmyzsh/ohmyzsh

echo ">>>>>> creating .zshrc source file..."
echo -e "plugins=\nZSH_THEME=''\nexport \nsource \n" > rw
./script.sh "(\n\tautojump\n\tzsh-autosuggestions\n\tenhancd\n\tk\n\tzsh-syntax-highlighting\n\tzsh-completions\n)" "\'sam\'" "ZSH=\$HOME\/ohmyzsh" "\$ZSH\/oh-my-zsh.sh"
cat rw

#creating zsh source file
cp rw .zshrc
rm rw
echo ">>>>>> done."

echo ">>>>>> configuring custom theme 'sam'..."
cd ~/ohmyzsh/themes

#creating custom theme
echo -e "directory() {\n\techo '%F{green}%2~%f'\n}\n\nusername(){\n\techo '[%(?.%F{blue}%n@%m%f.%F{red}%n@%m%f)] %#'\n}\n\ncurrent_time() {\n\techo '%F{yellow}[%D{%r}]%f'\n}\n\nZSH_THEME_GIT_PROMPT_DIRTY=\"*\"\nZSH_THEME_GIT_PROMPT_CLEAN=\"\"\nZSH_THEME_GIT_PROMPT_PREFIX=\"(\"\nZSH_THEME_GIT_PROMPT_SUFFIX=\")\"\n\nPROMPT='%B\$(current_time) \$(directory) \$(username)%b '\nRPROMPT='%F{gray}\$(git_prompt_info)%f'" | sudo tee sam
sudo cp sam sam.zsh-theme
sudo rm sam
echo ">>>>>> done."

echo ">>>>>> installing required plugins..."
cd ../plugins

#installing all plugins
sudo git clone https://www.github.com/b4b4r07/enhancd
sudo git clone https://www.github.com/wting/autojump
sudo git clone https://www.github.com/supercrabtree/k
sudo git clone https://www.github.com/zsh-users/zsh-syntax-highlighting
sudo git clone https://www.github.com/zsh-users/zsh-autosuggestions
sudo git clone https://www.github.com/zsh-users/zsh-completions
echo ">>>>>> done."

#update source file, switch to zsh if not already on it
cd ~
source ./zshrc
zsh
