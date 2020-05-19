# .zshrc

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.zshd

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mortalscumbag"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate $ZSH"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="false"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=15

export CHEATCOLORS=true

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in $ZSH/plugins/*)
# Custom plugins may be added to $ZSH/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  colored-man-pages colorize encode64 git nice-exit-code
)

[[ -s $ZSH/oh-my-zsh.sh ]] && . $ZSH/oh-my-zsh.sh # Load oh-my-zsh, if exists

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh \
  && (nvm use default > /dev/null 2>&1) # Load NVM, if exists

[[ -f ~/.liquidprompt ]] && . ~/.liquidprompt # Load liquidprompt, if exists

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.files/{exports,path,prompt,aliases,functions,extra}.sh;
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file

[[ -f "/root/.acme.sh/acme.sh.env" ]] && . "/root/.acme.sh/acme.sh.env"
