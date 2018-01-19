function __fish_cursor_konsole
    # that tries not to tell konsole to do anything (vi mode would mess up font
    # size changes), but does sth to prevent tmux workarounds from messing up
    # tmux
    echo -en '\e]999;\x7'
end

