# zsh-config

Here are my tips for the installation and configuration of the ZSH.

## Installation - sudo required

Installation of the requirements zsh and git with `sudo` command, after then the `config.sh` is executed to setup the user environment.

If you have `sudo` just execute this:

```
sh -c "$(curl -fsSL https://raw.github.com/eduveks/zsh-config/master/install.sh)"
```

> When Oh My ZSH launch the ZSH prompt just execute the `exit` command to continue.

## Auto Configuration - non-sudo

If you not have permission to execute the `sudo` command but the zsh and git is already installed.

Just execute this to auto config you user environment with ZSH shell as default in your terminal:

```
sh -c "$(curl -fsSL https://raw.github.com/eduveks/zsh-config/master/config.sh)"
```

> When Oh My ZSH launch the ZSH prompt just execute the `exit` command to continue.

## What is Happen

The `install.sh` will execute the sudo command to install the requirements such as zsh and git.

The `config.sh` configures the theme `ys` instead of the `robbyrussell`, and the plugins `zsh-autosuggestions` and `zsh-syntax-highlighting` will be installed and activated with the `emacs` plugin.

### Emacs

Finally, the alias `e` to launch Emacs is added, to avoid the Emacs incompatibilities with ZSH, where in some cases the Emacs are stuck and can not start in ZSH shell.

Then with this alias, we are able to use the command `e` to launch Emacs inside the Bash shell.
