alias ll "exa -lg --icons"
alias lla "ll -a"

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    pyenv init - | source
end

# peco
function fish_user_key_bindings
    bind \cr peco_select_history
end
