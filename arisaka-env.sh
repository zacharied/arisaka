# Base configuration values for arisaka.
# Must be sourced as early as possible in the login process, but the process
# for doing so depends on the shell in use.

# Base directory.
export ARISAKA="$HOME/.arisaka"

# Subdirectories.
export ARISAKA_ETC="$ARISAKA/etc"
export ARISAKA_LIB="$ARISAKA/lib"
export ARISAKA_BIN="$ARISAKA/bin"

# Shorthand for subdirectories.
export ARI_ETC="$ARISAKA_ETC"
export ARI_LIB="$ARISAKA_LIB"
export ARI_BIN="$ARISAKA_BIN"

# System-local subdirectories.
export ARISAKA_ETCL="$ARISAKA/local/etc"
export ARISAKA_LIBL="$ARISAKA/local/lib"
export ARISAKA_BINL="$ARISAKA/local/bin"

# Shorthand for system-local subdirectories.
export ARI_ETCL="$ARISAKA_ETCL"
export ARI_LIBL="$ARISAKA_LIBL"
export ARI_BINL="$ARISAKA_BINL"

# vim: set ft=sh:
