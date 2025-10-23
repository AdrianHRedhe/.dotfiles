# .dotfiles
Here is where I keep personal config profiles for various programs to sync across computers.

Main idea is to use gnu stow as a symlink farm and access packages where needed.

How to use this on a mac for almost full download:

a) cd $HOME  
b) git clone https://github.com/adrianhredhe/.dotfiles.git  
c) cd ~/.dotfiles  
d) sh mac/.install-mac.sh  

Then everything should be good to go.  

To manually install some packages:  
a) cd $HOME  
b) git clone https://github.com/adrianhredhe/.dotfiles.git  
c) cd ~/.dotfiles  
d) brew install stow  
e) brew install tmux  
f) stow -d mac -t ~ tmux  
g) symlink is created where files in mac/tmux are put into ~ with symlink to repo unless they exist  
h) you can use tmux as it was written into config  
