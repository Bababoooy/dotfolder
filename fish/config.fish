
if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting
colorscript  random
starship init fish | source
alias ls="exa --long --all --icons  --group-directories-first"
alias cat="bat"
alias config="cd ~/.config"
alias clear="clear && colorscript random"
export EDITOR='nvim'
fish_add_path /home/eidros/.spicetify
