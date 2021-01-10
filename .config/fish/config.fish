# Global Variables
set -U NVIM_TUI_ENABLE_TRUE_COLOR 1
set -U EDITOR nvim

source ~/.asdf/asdf.fish

# Alias
alias mux "tmux -2 -u new -A -s main"
alias today "nvim ~/documents/today.adoc"
alias stone "cd ~/desktop/stone"
alias vim "nvim"

# fish
alias reload_fish "source ~/.config/fish/config.fish"
alias edit_fish "nvim ~/.config/fish/config.fish"

# Prompt
function fish_prompt
	set last_status $status
	set_color cyan; printf '%s' (basename $PWD)
	set_color yellow; printf '%s' (__fish_git_prompt)
	set_color white; printf '%s ' :
end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
