# Personal .dotfiles
A public repo with .dotfiles for easier transfer of configurations.
With this repository I shall save my setup and improve on it instead of
starting from scratch and remembering all my steps.

# Goals
 - [x] Same Thing for 
        - [X] Fix "? 0%" on no battery devices
        - [ ] Do a pull request to tmux cpu to fix it
- [x] Somehow create a Pipewire audio filter chain, that makes mics useable
    - could make a good template with calf-plugins but pipewire has no lv2 support
        - build it with lv2 support?
        - Got a tip to use an audio interface device. How about wireless connections like Bluetooth?
- [ ] Make own zsh-theme based on bullet-train?
- [ ] Change Cursor depending on VI Mode. A "Beam" on insert and "Block" in normal mode
- Next Neovim Plugins
    - [ ] Harpoon
        - Now somehow branch harpoon2
        - config too compilicated and Chat-GPT only gives wrong config
- [ ] Add snippets
        - [ ] TODO:
        - [ ] doxygen comments
        - [ ] mirror defined method to source/header
- [ ] Give feedback when recording
- [x] Check more mini plugins
        - [x] mini.comment
        - [x] mini.pairs (was annoying in VS Code, lets give it another chance)
- [ ] Check and pick specific plugins when loading in vscode/vscodium
- [ ] Neo-Tree sync with current buffer
- [ ] keep track of additional packages. May be useful for an installer script
    - some packages and lsp depend on rust/cargo
    - Neovim: Telescope
        - install it locally, so that auto_install works correctly
        - ripgrep [fzf in neovim]
            - also use fzf native since /** is neat
        - fd/fd-find needs ln -s $(which fdfind) /usr/bin/fd
    - python3-venv [mason in neovim]. Are you sure? Alot of optional in checkhealth
    - tmux, nvim, zsh, pipewire, alacritty [DUH!]
        - Theme
            - Tmux https://github.com/caiogondim/maglev
            - Zsh https://github.com/caiogondim/bullet-train.zsh
            - Alacritty + Neovim Tokiyo-Storm
    - LazyGit from Github https://github.com/jesseduffield/lazygit
    - JetBrainsMonoNL Nerd Font [ glyphs ]
        - get it from Nerd Font Repo ⇒ releases
    - calf-plugins [audio processing lv2]
        - needs pipewire with lv2 support before it can be used
    - bat [cat with syntax highlighting, alias added]
    - nala [apt frontend, alias added]
