# Adify

Set of scripts that install necessary tools for Annkissam developers and
project managers on their computers.

This has been adapted from `aditya7iyengar/adify`

## USAGE

* From the terminal:

```
$ bash <(wget -qO- https://raw.githubusercontent.com/annkissam/adify/master/adify.sh)

OR

$ bash <(curl -s https://raw.githubusercontent.com/annkissam/adify/master/adify.sh)
```

## Known Issues

#### Mac - Mojave

* `asdf` requires additional setup as seen in the Bash on MacOS section [of the install guide](https://asdf-vm.com/#/core-manage-asdf-vm?id=install-asdf-vm).
  * Annkissam users will likely want to also run the following after installing oh-my-zsh, which ammends the zshrc instead of bash:
    ```
    echo -e '\n. $(brew --prefix asdf)/asdf.sh' >> ~/.zshrc
    echo -e '\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash' >> ~/.zshrc
    ```
* When the `asdf` command is not available, later installs will fail but report success, e.g.:
  ```
  ==========================================================
  Installing Erlang 22.0.......
  ==========================================================
  adify.sh: line 386: asdf: command not found
  adify.sh: line 387: asdf: command not found

  [\u2713] Successfully install erlang: 22.0
  ```
