# Arisaka

## Startup

The current shell should, in a login-only init file (such as `.zprofile`),
export the environment variables printed by running `arisaka_init`. This sets
up the environment variables necessary to use arisaka. An example in `zsh`:

```zsh
while read -r line; do
    eval "export -r $line"
done < <("$HOME/bin/arisaka_init")
```

To run `arisaka_init` create a link (in the above case, it's in `~/bin`) to the
`arisaka_init` file in this repository.

After setting up the environment, the shell is free to continue its normal
startup process as needed.

## Directory structure

| Directory name | Purpose |
| --- | --- |
| `bin` | Binaries and executables for corresponding configuration domains. |
| `lib` | Libraries used by Arisaka config files and binaries. |
| `etc` | Dotfiles and configs. |
| `local/*` | Syetem-local versions of the repo-level subdirectories. |

## TODO

* Make a TODO
