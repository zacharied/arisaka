# func.zsh: additional helper functions for interactive use.

up() {
    # Decide how many directories to recurse.
    local count
    if [[ -z $1 || 0 -ge $1 ]]; then 
        count=1
    else 
        count=$1
    fi

    # Construct the target directory.
    local target
    for (( i = 0; i < count; i++ )); do
        target+="../"
    done

    cd "$target"
}

# Jump to the directory of, or edit a config file.
etc() {
    if [[ "$1" == '-l' ]]; then
        local Vuse_local
        shift
    else
        unset Vuse_local
    fi

    local target="$1"

    if [[ -v Vuse_local ]]; then
        local base="$ARI_ETCL"
    else
        local base="$ARI_ETC"
    fi

    if [[ -z "$target" ]]; then
        cd "$base"
        return
    fi
    
    target="$base/$target"

    if [[ -d "$target" ]]; then
        pushd -q "$target"
    elif [[ -f "$target" ]]; then
        pushd -q "${target%/*}"
        "$EDITOR" "$target"
        popd -q
    else
        echo "$0: invalid file or directory '$target'" >&2
        return 1
    fi
}

# Launch an executable in the $ARI_BIN directory.
bin() {
    set -- $(getopt 'le' "$@")
    while true; do
        case "$1" in
            -l)
                local Vuse_local
                ;;
            -e)
                local Vedit
                ;;
            --)
                shift
                break
                ;;
        esac
        shift
    done

    if [[ -z "$1" ]]; then
        echo "$0: filename required" >&2
        return 1
    fi

    local target="$1"
    if [[ -v Vuse_local ]]; then
        local base="$ARI_BINL"
    else
        local base="$ARI_BIN"
    fi

    target="$base/$target"

    if [[ -v Vedit ]]; then
        "$EDITOR" "$target"
    elif [[ -x "$target" ]]; then
        shift
        "$target" "$@"
    else
        echo "$0: '$target' is not executable or is not a file" >&2
        return 1
    fi
}
