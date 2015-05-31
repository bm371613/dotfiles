function fish_prompt --description 'Write out the prompt'

    set stat $status

    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    set __fish_color_status (set_color -o green)
    set __status_string ✔
    if test $stat -gt 0
        set __fish_color_status (set_color -o red)
        set __status_string ✘
    end

    switch $USER

        case root

            set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
            set -g __fish_color_user (set_color -o red)

        case '*'

            set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            set -g __fish_color_user (set_color -o green)
    end

    printf '%s%s %s%s@%s %s%s %s\f\r➜ ' \
        "$__fish_color_status" "$__status_string" \
        "$__fish_color_user" $USER $__fish_prompt_hostname \
        "$__fish_prompt_cwd" (pwd|sed "s=$HOME=~=") "$__fish_prompt_normal"
end
