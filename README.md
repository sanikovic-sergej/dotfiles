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
        - Got a tip to use an audio interface device. They only work on wired AUX devices >.>
- [x] Transition to Starship - Cross Shell
    - [ ] Make own zsh-theme based on bullet-train?
    - [x] Change Cursor depending on VI Mode.
- Next Neovim Plugins
    - [ ] Harpoon
        - Now somehow branch harpoon2
        - config too compilicated and Chat-GPT only gives wrong config
- [ ] Add snippets
        - [ ] TODO:
        - [ ] doxygen comments
        - [ ] mirror defined method to source/header
- [ ] Give feedback when recording with Q Macro in lualine
    - currently broken, maybe Key is overwritten by a defautl keybinding?
    - a PR is pending for refresh on start/stop recording
- [x] Fix overlapping Keymaps that are reported by Wich-Key
- [ ] Check and pick specific plugins when loading in vscode/vscodium
- [x] Specify behavior when starting with admin rights (sudo nvim)
- [x] Neo-Tree sync with current buffer
    - [x] remove it as default explorer when starting nvim
        - Set it as default explorer - deactivated netrw
    - [x] Fix when searching and going to result the cursor starting at the top instead of the result line
- [ ] keep track of additional packages. May be useful for an installer script
    - some packages and lsp depend on rust/cargo
        - cargo install starship --locked
            - Cmake is needed for build
    - Neovim: Telescope
        - install it locally, so that auto_install works correctly
        - ripgrep [fzf in neovim]
            - also use fzf native since /** is neat
        - fd/fd-find needs ln -s $(which fdfind) /usr/bin/fd [on Ubuntu]
    - python3-venv [mason in neovim]. Are you sure? A lot of optional in checkhealth
    - tmux, nvim, zsh, pipewire, alacritty [DUH!]
        - Theme
            - Tmux https://github.com/caiogondim/maglev
            - Alacritty + Neovim Tokiyo-Storm
    - LazyGit from Github https://github.com/jesseduffield/lazygit
    - JetBrainsMonoNL Nerd Font [ glyphs ]
        - get it from Nerd Font Repo ⇒ releases
    - calf-plugins [audio processing lv2]
        - needs pipewire with lv2 support before it can be used
    - bat [cat with syntax highlighting, alias added]
