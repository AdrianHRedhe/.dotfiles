# .dotfiles
Here is where I keep personal config profiles for various programs to sync across computers.

Main idea is to use gnu stow as a symlink farm and access packages where needed. More on that later as I will need some more fixing first

How to use stow for this:

a) clone repo into ~/.dotfiles or other location of your choice
b) cd ~/.dotfiles
c) stow -d mac -t ~ tmux
d) symlink is created where files in mac/tmux are put into ~ with symlink to repo unless they exist
