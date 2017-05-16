set --erase fish_greeting

set -g fish_color_autosuggestion '666666'
set -g fish_color_command 'ffffff'
set -g fish_color_cwd '5fafd7'

fish_vi_key_bindings

switch $TERM
    case xterm
        set TERM xterm-256color
end

keychain -q $HOME/.ssh/id_rsa
source $HOME/.keychain/(hostname)-fish

