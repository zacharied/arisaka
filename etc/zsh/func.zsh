# func.zsh: additional helper functions for interactive use.

up() {
    # Decide how many directories to recurse.
    local count
    if [[ -z $1 || 0 -ge $1 ]]; then 
        count=1
    else 
        count=$1
    fi; local -r count

    # Construct the target directory.
    local target
    for (( i = 0; i < count; i++ )); do
        target+="../"
    done

    cd "$target"
}

etc() {
    local target="$1"

    if [[ -z "$target" ]]; then
	cd "$ARI_ETC"
	return
    fi

    target="$ARI_ETC/$target" 

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
