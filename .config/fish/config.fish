# Global Variables
set -U NVIM_TUI_ENABLE_TRUE_COLOR 1
set -U EDITOR nvim

set -U WATSON_DIR ~/.watson

# asdf
source /usr/local/opt/asdf/asdf.fish

# Alias
alias tree "tree -I \"node_modules|vendor|bower_components\""
alias cpwd "pwd | pbcopy"
alias editfish "nvim ~/.config/fish/config.fish"
alias mux "tmux -2 -u new -A -s main"
alias vim="nvim"
alias vimdiff="nvim -d"
alias doc="cd ~/Documents"
alias down="cd ~/Downloads"
alias app="cd ~/Applications"
alias work="cd ~/Workspace"

# Alias - Git
alias g "git"
alias gs "git status"
alias gd "git diff"
alias gda "git diff --staged"
alias gc "git commit"
alias gck "git checkout"
alias gsw "git switch"
alias gr "git restore"
alias gl "git log --all --decorate --oneline --graph"
alias ga "git add"
alias gap "git add --patch"
alias gbm "git branch --merge"
alias gbd "git branch -d"
alias gbdf "git branch -D"

# Prompt
function fish_prompt
	set last_status $status
	set_color cyan; printf '%s' (basename $PWD)
	set_color yellow; printf '%s' (__fish_git_prompt)
	set_color white; printf '%s ' :
end

# Base16 Shell
if status --is-interactive
	set -U BASE16_SHELL "$HOME/.config/base16/shell/"
	source "$BASE16_SHELL/profile_helper.fish"
end
