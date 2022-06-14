# zsh-config

Here are my tips for the installation and configuration of the ZSH.

## Installation

```
sh -c "$(curl -fsSL https://raw.github.com/eduveks/zsh-config/master/install.sh)"
```

> When Oh My ZSH launch the ZSH prompt, execute the `exit` command to continue.

## Configuration

The installation above will configure the theme `ys` instead of the `robbyrussell`.

The plugins `zsh-autosuggestions` and `zsh-syntax-highlighting` will be installed and activated with the `emacs` plugin.

### Emacs

Finally, the alias `e` to launch Emacs is added, to avoid the Emacs incompatibilities with ZSH, where in some cases the Emacs are stuck and can not start in ZSH shell.

Then with this alias, we are able to use the command `e` to launch Emacs inside the Bash shell.
