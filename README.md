# Arisaka

## Startup

The current shell should, in a login-only init file (such as `.zprofile`),
source `etc/shell/profile`. This sets up the environment variables necessary to
locate Arisaka. Because Arisaka's location is unknown prior to sourcing this
file, it is recommended to make a symlink the `profile` file to your home
directory in the form of `~/.profile`. Sourcing `profile` also loads the
remainder of the Arisaka environment variables. After setting up the
environment, the shell is free to continue its normal startup process as
needed.

## Directory structure

| Directory name | Purpose                                                     |
| -------------- | ----------------------------------------------------------- |
| `bin`          | Binaries and executables for corresponding configuration domains. |
| `lib`          | Libraries used by Arisaka config files and binaries.        |
| `etc`          | Dotfiles and configs.                                       |
| `local`        | System-local information; not stored in the repo.           |
| `local/*`      | Syetem-local versions of the repo-level subdirectories.     |

## TODO

* Make a TODO
