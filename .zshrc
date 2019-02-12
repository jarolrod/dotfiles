HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
ZSH_THEME=robbyrussell


setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/jarol/.zshrc'


alias ls="ls -lHa --color=auto"

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias vim="nvim"                          # Replace vim with neovim
alias zshrc="nvim ~/.zshrc && source ~/.zshrc"                #Edit zshrc

alias myip="curl http://ipecho.net/plain; echo"   # Retrieve current ip address
alias ipe='curl ipinfo.io/ip'

alias update="yay -Syu"                   # Update System
alias grub="sudo vim /etc/default/grub"    # Edit grub
alias grub-update="sudo update-grub"       # update grub
# reload your bash config
alias src="source ~/.bash_profile"

alias fstab="sudo nano /etc/fstab"
alias untar='tar -zxvf '

# mute the system volume
alias stfu="osascript -e 'set volume output muted true'"


alias generate-password="openssl rand -base64 20"
alias speedtest='speedtest-cli --server 2406 --simple'

alias svim='sudo vim'
alias dotspacemacs='vim ~/.spacemacs'
alias bashrc="vim ~/.bashrc && source ~/.bashrc"  #Edit and update bashrc
alias xrc="vim ~/.Xresources"                     #Edit Xresources file
alias xrc-update="xrdb ~/.Xresources && xrdb -merge ~/.Xresources"  # Update Xresources file
alias i3conf="vim ~/.i3/config"            # Edit i3 config
alias zathurarc="vim ~/.config/zathura/zathurarc"   #Edit zathurarc


alias mount-list="" # Print out internal disks and mount points
alias fetch="neofetch" # Print system details

# make executable
alias ax="chmod a+x"

# search through history
alias hs='history | grep'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

## pass options to free ##
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


## Get server cpu info ##
alias cpuinfo='lscpu'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit

prompt pure
# End of lines added by compinstall

# ~/.zshrc
source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt


