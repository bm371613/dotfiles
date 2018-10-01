set --erase fish_greeting

set -g fish_color_autosuggestion '666666'
set -g fish_color_command 'ffffff'
set -g fish_color_cwd '5fafd7'

fish_vi_key_bindings

switch $TERM
    case xterm
        set TERM xterm-256color
end

if status --is-login
    for line in (cat ~/.env)
        export $line
    end

    boto
    set -gx PATH $HOME/bin $PATH
    set -gx PATH $HOME/.local/bin $PATH

end

keychain -q $HOME/.ssh/id_rsa
source $HOME/.keychain/(hostname)-fish

