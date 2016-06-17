export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

#export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
#alias mq='/Users/vincentyang/Desktop/IdentityMind/MessageQueue/mq/bin/imqbrokerd -vmargs "-Xms128m -Xmx512m -Xss256k" -name identitymind&'
#alias redis='/Users/vincentyang/Desktop/IdentityMind/Redis/redis-3.0.2/src/redis-server'
alias mysql='mysql.server start'
alias mysqle='mysql.server stop'
alias aeonneo='cd ~/Dropbox/AeonNeo/'
alias davis='cd ~/Dropbox/AeonNeo/UC\ Davis/'
alias soph='cd ~/Dropbox/AeonNeo/UC\ Davis/Sophomore'
alias life='cd ~/Dropbox/AeonNeo/Life'
alias dotfiles='cd ~/Dropbox/AeonNeo/dotfiles'
alias projects='cd ~/Dropbox/AeonNeo/Projects'
alias mgt='/usr/bin/open -a "/Applications/Safari.app" "http://connect.mheducation.com/connect/login/index.htm?&BRANDING_VARIANT_KEY=en_us_default_default&node=connect_app_17_251"'
alias ant='/usr/bin/open -a "/Applications/Safari.app" "https://digital.wwnorton.com/howhumans7"'
alias dsp='cd ~/Dropbox/AeonNeo/UC\-Davis/Sophomore/Winter/DSP'
alias sublime='open /Applications/Sublime\ Text\ 2.app/'
alias now='cd ~/Dropbox/AeonNeo/UC\-Davis/Sophomore/Spring/'
alias dsp='cd ~/Dropbox/AeonNeo/UC\-Davis/DSP'
alias :q='exit'
alias proj='cd ~/Dropbox/AeonNeo/Projects/'
alias bish='cd ~/Dropbox/AeonNeo/Projects/Integrated-Security-Simulation/'
alias tk='tmux kill-session -a'
alias tls='tmux list-sessions'
alias ta='tmux a'
alias t='tmux attach -t default || tmux new -s default'
alias wd='pwd'
alias e='ssh 45.55.29.158 -l aeonneo'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias ga='git add .'
alias vi="vim -S ~/.vimrc"


c() {
  if [ $# -eq 0 ]
  then 
    ls
  else
    cd "$1"
    ls
  fi
}



# Setting PATH for Python 3.4
# # The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
bind -m vi-insert '"jk":"\e"' 
export HISTTIMEFORMAT="%d/%m/%y %T "

export CLICOLOR=1;
#Colors specified here: http://geoff.greer.fm/lscolors/
export LSCOLORS=bxfxcxdxhxegedabagacad
export GREP_OPTIONS='--color=auto'

source `brew --prefix git`/etc/bash_completion.d/git-completion.bash

alias g='git'
# Autocomplete for 'g' as well
complete -o default -o nospace -F _git g

# Misc
#copy output of last command to clipboard
alias cl="fc -e -|pbcopy"

# top
alias cpu='top -o cpu'
alias mem='top -o rsize' # memory

# copy the working directory path
alias cpwd='pwd|tr -d "\n"|pbcopy'

# DNS (with update thanks to @blanco)
alias flush="sudo killall -HUP mDNSResponder"

# share history between terminal sessions
alias he="history -a" # export history
alias hi="history -n" # import history

# Get your current public IP
alias ip="curl icanhazip.com"

# ls better
alias la="ls -aF"
alias ld="ls -ld"
alias ll="ls -l"
alias lt='ls -At1 && echo "------Oldest--"'
alias ltr='ls -Art1 && echo "------Newest--"'

# mount all connected Firewire disks
alias mountall='system_profiler SPFireWireDataType | grep "BSD Name: disk.$" | sed "s/^.*: //" | (while read i; do /usr/sbin/diskutil mountDisk $i; done)'
# unmount them all
alias unmountall='system_profiler SPFireWireDataType | grep "BSD Name: disk.$" | sed "s/^.*: //" | (while read i; do /usr/sbin/diskutil unmountDisk $i; done)'

# recursively delete Dropbox conflicted files
alias rmdbc="find . -name *\ \(*conflicted* -exec rm {} \;" 

# mute the system volume
alias stfu="osascript -e 'set volume output muted true'"

# time machine log
alias tmlog="syslog -F '\$Time \$Message' -k Sender com.apple.backupd-auto -k Time ge -30m | tail -n 1"

# trim newlines
alias tn='tr -d "\n"'

# list TODO/FIX lines from the current project
alias todos="ack -n --nogroup '(TODO|FIX(ME)?):'"

# interactive fasd
alias zi="fasd -e cd -i"