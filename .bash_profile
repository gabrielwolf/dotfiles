# Bash
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad
export HISTSIZE=2000
export HISTFILESIZE=2000

# my prompt in the form of user@computer-name:~/foo/bar]$
PS1='\[\033[1;32m\]\u\[\033[1;33m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;36m\]]\[\033[1;31m\]\\$\[\033[0m\] ' 

# Handy aliases
alias ll="ls -lvhAa"
alias lll="ls -lvAa"
alias l='ls'
alias le='less'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# Software
alias yb='yarn run build'
alias ys='yarn run start'
alias subl='open -a Sublime\ Text.app'
alias p='python'
alias p3='python3.5'
alias updatedb='sudo /usr/libexec/locate.updatedb'
alias freefilesync='sudo /Applications/FreeFileSync.app/Contents/MacOS/FreeFileSync'
alias bfg='java -jar ~/Downloads/Web/bfg-1.12.8.jar'

# Web
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias nginx_modsite='~/Downloads/Tools/nginx_modsite'
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.php70.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.php70.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'
alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'
alias nginx.logs.phpmyadmin.error='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.error.log'
alias nginx.logs.phpmyadmin.access='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.access.log'

# Path
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
export PATH="$HOME/.npm/bin:$HOME/.npm-global/bin:/usr/local/Cellar/mariadb/10.1.21/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export PATH="/Applications/Umlet:$PATH"
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
export PATH="$MAGICK_HOME/bin:$PATH"
export PATH="~/Downloads/Tools:$PATH"

# Gitprompt configuration
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then

	# Set config variables first
	GIT_PROMPT_ONLY_IN_REPO=1
	GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

	# GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
	# GIT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files

	# GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

	GIT_PROMPT_START='\[\033[1;32m\]\u\[\033[1;33m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[0;37m\]'    # uncomment for custom prompt start sequence
	GIT_PROMPT_END=' \[\033[1;31m\]\\$\[\033[0m\] '      # uncomment for custom prompt end sequence

	# as last entry source the gitprompt script
	# GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
	# GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
	# source ~/.bash-git-prompt/gitprompt.sh

	#1; in prompt is bold, 0; is regular

    GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

source ~/Downloads/Tools/wp-cli/wp-completion.bash
source /usr/local/opt/nvm/nvm.sh

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Librry/CoreServices/Finder.app'
alias rmds_store='find . -name '*.DS_Store' -type f -delete'

PHP_AUTOCONF=/usr/local/bin/autoconf

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Enable Python version management pyenv´s autocompletion
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export MAGICK_HOME="/usr/local/Cellar/imagemagick/7.0.4-7"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"