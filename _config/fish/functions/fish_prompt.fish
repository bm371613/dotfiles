function fish_prompt --description 'Write out the prompt'

    set stat $status

    set duration ""
    if test $CMD_DURATION
        # Show duration of the last command in seconds
        set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs\n", $1 / $2}')
    end

    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    set __fish_color_status (set_color -o white)
    if test $stat -gt 0
        set __fish_color_status (set_color -o red)
    end

    switch $USER

        case root

            set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
            set -g __fish_color_user (set_color -o red)

        case '*'

            set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            set -g __fish_color_user (set_color -o green)
    end

    printf '%sduration:%s %s %sstatus:%s %s%s%s\n%s%s@%s %s%s%s\f\r$ ' \
        (set_color -o blue) (set_color -o normal) \
        "$duration" \
        (set_color -o blue) (set_color -o normal) \
        "$__fish_color_status" "$stat" "$__fish_prompt_normal" \
        "$__fish_color_user" $USER $__fish_prompt_hostname \
        "$__fish_prompt_cwd" (pwd|sed "s=$HOME=~=") \
        "$__fish_prompt_normal"
end
