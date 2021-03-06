# .aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....="cd ../../../.."
alias _='sudo '
alias a='php artisan'
alias c='composer '
alias cela='clear; els -l -a -h '
alias cla='clear; ls -lash '
alias clone='git clone '
alias dfh='df -h '
alias ducks='du -cksh * | sort -rn | head '
alias duh='du -h '
alias edit=$EDITOR' '
alias empty='cat /dev/null > '
alias ex='exa -lah '
alias fire='dig +short -t txt istheinternetonfire.com'

alias grep='grep -i --color=auto '
alias k9='kill -9 '
alias gx='ansible-galaxy'
alias hs='fc -l 1 | grep --color=auto'

# artisan related
alias mfs='echo php artisan -vvv migrate:fresh --seed; php artisan -vvv migrate:fresh --seed '
alias lal='tail -f -n 450 storage/logs/laravel*.log \
  | grep -i -E \
    "^\[\d{4}\-\d{2}\-\d{2} \d{2}:\d{2}:\d{2}\]|Next [\w\W]+?\:" \
    --color '

alias lla='ls -lash '
alias lns='ln -s'
alias ela='els -l -a -h '
alias nn='nano '
alias ne='node -e '
alias nls='npm ls '
alias ni='npm install '
alias nu='npm un '
alias mkdir='mkdir -p '
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias mv='mv '
alias play='ansible-playbook '
alias psg='ps aux | grep $(echo $1 | sed "s/^\(.\)/[\1]/g")'
alias psx='ps aux '
alias pgf='pgrep -f '
alias rmf='rm -f '
alias ssh='ssh -o TCPKeepAlive=yes '
alias sudo='nocorrect sudo '
alias tln='tail -n '
alias tlf='tail -f '
# alias wget='wget --no-check-certificate '

alias g="git"
alias h="fc -l 1"
alias history="history"
alias j="jobs"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
# alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
# alias la="ls -laF ${colorflag}"

# List only directories
# alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
# alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias badge="tput bel"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# Make Grunt print stack traces by default
# command -v grunt > /dev/null && alias grunt="grunt --stack"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

alias nd='sudo nginx -s stop'
alias nr='sudo nginx -s reload'
alias nt='sudo nginx -t'

alias po="popd "
