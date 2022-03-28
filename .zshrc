# Launch nvim with vim
alias vim="nvim"
alias vi="nvim"

# Remove vim mode esc time out
KEYTIMEOUT=1

# Enable vi mode
bindkey -v

# change cursor based on vim mode
function zle-keymap-select () {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';; # block
		viins|main) echo -ne '\e[5 q';; # beam
	esac
}
zle -N zle-keymap-select
zle-line-init() {
	zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
	echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Setup Rust
export PATH="$HOME/.cargo/bin:$PATH"
