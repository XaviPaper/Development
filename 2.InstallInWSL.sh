# Instalar ZSH
sudo apt-get install zsh

# Instalar Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Configure Oh My ZSH template
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# Edit ~/.zshrc
# Set ZSH_THEME="powerlevel9k/powerlevel9k"