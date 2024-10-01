# Dotfile

A comprehensive configuration for setting up development environments using Ansible. This project ensures a consistent setup across both MacOS and Linux, installing a variety of essential tools for productivity and development.

## Dependencies

- **Python 3.11**: Install via:
    ```bash
    sudo apt install python3.11
    ```
- **Ansible Playbook**: Install via pip:
    ```bash
    python3 -m pip install --user ansible
    ```
- **Homebrew**: Required for MacOS. Follow the installation guide [here](https://brew.sh/).

## Running the Playbook

To apply the configurations and install the necessary tools, run the following command:

```bash
ansible-playbook main.yml
```

## Tools Installed

This setup will install the following tools:

- **Cross-platform Tools**:
  - [gnupg](https://gnupg.org/) – Open-source encryption software
  - [git](https://git-scm.com/) – Version control system
  - [git-delta](https://github.com/dandavison/delta) – Syntax-highlighting pager for git
  - [tmux](https://github.com/tmux/tmux) – Terminal multiplexer
  - [zsh](https://www.zsh.org/) – Shell with scripting capabilities
  - [oh-my-zsh](https://ohmyz.sh/) – Zsh configuration framework
  - [starship](https://starship.rs/) – Minimal prompt for any shell
  - [nvim](https://neovim.io/) – Modern Vim-based text editor
  - [fzf](https://github.com/junegunn/fzf) – Command-line fuzzy finder
  - [jq](https://jqlang.github.io/jq/) – JSON processor
  - [vscode](https://code.visualstudio.com/) – Code editor
  - [alacritty](https://github.com/alacritty/alacritty) – GPU-accelerated terminal emulator
  - [bat](https://github.com/sharkdp/bat) – A `cat` clone with syntax highlighting
  - [ripgrep](https://github.com/BurntSushi/ripgrep) – Fast search tool
  
- **MacOS Only**:
  - [yabai](https://github.com/koekeishiya/yabai) – Tiling window manager for MacOS
  - [skhd](https://github.com/koekeishiya/skhd) – Hotkey daemon for MacOS
  - [sketchybar](https://github.com/FelixKratz/SketchyBar) – Customizable bar for MacOS
  - [timeout](https://apps.apple.com/us/app/time-out-break-reminders/id402592703?mt=12) – Break reminder app for MacOS

- **Linux Only**:
  - [i3](https://i3wm.org/) – Tiling window manager for Linux
  - [i3blocks](https://github.com/vivien/i3blocks) – Status bar for i3
  - [i3status](https://github.com/i3/i3status) – Lightweight status bar for i3
  - [safeeyes](https://slgobinath.github.io/SafeEyes/) – Eye strain prevention tool
  - [redshift](https://github.com/jonls/redshift) – Adjusts screen color temperature
  - [eza](https://eza.rocks) – Replacement for `ls`

## Build and Test Status

![BuildStatus](https://github.com/shubham399/new-dotfiles/actions/workflows/test.yml/badge.svg)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
