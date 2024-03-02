# Personal .dotfiles
A public repo with .dotfiles for easier transfer of configurations.
With this repository I shall save my setup and improve on it instead of
starting from scratch and remembering all my steps.

# Goals
- [ ] switch to zsh as a main from bash
    - The Theme will be based on https://github.com/caiogondim/bullet-train.zsh
        - [X] Adjust Time to be at the end of the first line (right corner)
        - [ ] Show Ram usage like 5G/16G. Maybe even color code on percentage?
            - [ ] Font color did get messed up when porting to .toml
        - [x] Remove the version display of node directly command line
        - [ ] Display git information in a new line instead of growing command line. Looks ridicious with giant branch names
        - [ ] Adjust Git check symbol and red dot. They look outdated. Maybe a Font Problem
    - [x] Same Thing for 
        - [X] Fix "? 0%" on no battery devices
- [x] Somehow create a Pipewire audio filter chain, that makes mics useable
    - could make a good template with calf-plugins but pipewire has no lv2 support
        - build it with lv2 support?
        - got a tip to use an audiointerface device. How about wireless connections like Bluetooth?
- [ ] Change Cursor depending on VI Mode. A "Beam" on insert and "Block" in normal mode
- Next Neovim Plugins
    - [X] Which-key
    - [ ] Lazy-Git
    - [ ] Harpoon
    - [X] Neo-Tree
- [ ] Switching to git-submodules for plugins
    - Submodules in tmux
    - Submodules oh-my-zsh
- [ ] keep track of additional packages. May be usefull for an installer script
    - Neovim: Telescope
        - ripgrep [fzf in neovim]
            - also use fzf native since /** is neat
        - fd/fd-find needs ln -s $(which fdfind) /usr/bin/fd
    - python3-venv [mason in neovim]. Are you sure? Alot of optional in checkhealth
    - tmux, nvim, zsh, pipewire, alacritty [DUH!]
        - Theme
            - Tmux https://github.com/caiogondim/maglev
            - Zsh https://github.com/caiogondim/bullet-train.zsh
            - Alacritty + Neovim Tokiyo-Storm
    - JetBrainsMonoNL Nerd Font [ glyphs ]
        - get it from Nerd Font Repo -> releases
    - calf-plugins [audio processing lv2]
        - needs pipewire with lv2 support before it can be used
    - bat [cat with syntax highlighting, alias added]
    - nala [apt frontend, alias added]
