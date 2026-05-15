if status is-interactive

    # Basic aliases
    alias ls='ls --color=auto'
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
    alias grep='grep --color=auto'

    # Custom aliases
    alias py='python3'
    alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    alias plz='sudo'
    alias please='sudo'
    alias v='nvim'
    alias vim='nvim'

    # Set wallpaper function
    function wp
        feh --bg-scale $argv[1]
    end

    # PATH
    fish_add_path $HOME/.local/bin

    # Starship
    set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
    starship init fish | source

    # GTK theme
    set -gx GTK_THEME Dracula

    # Key Bindings
    bind \es 'fish_commandline_prepend sudo'

    # yazi shell wrapper (cd on exit)
    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        command yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
            builtin cd -- "$cwd"
        end
        command rm -f -- "$tmp"
    end

end
