abbr --add vim nvim
abbr --add vi nvim
abbr --add nv "nvim ./"
abbr --add c cd
abbr --add cat bat

# Directory Listing aliases
abbr --add l "eza --long --icons --classify --hyperlink --group-directories-first"
abbr --add la "eza --long --icons --classify --hyperlink --all"
abbr --add lt "eza --long --icons --classify --hyperlink --recurse --tree --level=2"
abbr --add gl "eza --long --icons --grid --hyperlink --group-directories-first"

#abbr --add src "source ~/.config/fish/config.fish"
abbr --add src "source ~/.config/fish/**/*.fish"
abbr --add src-tmux "tmux source-file ~/.config/tmux/tmux.conf"
abbr --add today "date +"%A, %B %-d, %Y""
abbr --add weeknum "date +%V"
abbr --add qfind "find . -name " # qfind:    Quickly search for file

abbr --add config-nvim "nvim ~/.config/nvim/"
abbr --add config-fish "nvim ~/.config/fish/config.fish"
abbr --add config-fish-aliases "nvim ~/.config/fish/conf.d/abbreviations.fish"
abbr --add config-tmux "nvim ~/.config/tmux/tmux.conf"
abbr --add config-alacritty "nvim ~/.config/alacritty/alacritty.toml"
abbr --add config-starship "nvim ~/.config/starship/starship.toml"
abbr --add config-git "nvim ~/.config/git/config"
abbr --add config-ssh "nvim ~/.ssh/config"

abbr --add dotfiles "cd ~/.dotfiles"

abbr --add lg lazygit
abbr --add git_config_debug "git config --list --show-origin --show-scope"

abbr --add sd-automatic "source ~/Projects/stable-diffusion/stable-diffusion-webui/venv/bin/activate.fish && ~/Projects/stable-diffusion/stable-diffusion-webui/webui.sh"
abbr --add sd-comfyui "source ~/Projects/stable-diffusion/ComfyUI/venv/bin/activate.fish && set -x HSA_OVERRIDE_GFX_VERSION 10.3.0 && set -x HIP_VISIBLE_DEVICES 0 && set -x PYTORCH_HIP_ALLOC_CONF expandable_segments:True && set -x PYTORCH_TUNABLEOP_ENABLED 1 && python ~/Projects/stable-diffusion/ComfyUI/main.py --use-pytorch-cross-attention"
abbr --add setup_amd_export_llm_magic "export HSA_OVERRIDE_GFX_VERSION=10.3.0 export HIP_VISIBLE_DEVICES=0 export PYTORCH_HIP_ALLOC_CONF=garbage_collection_threshold:0.8,max_split_size_mb:512"
abbr --add update-open-webui "docker run --rm -v /var/run/docker.sock:/var/run/docker.sock nickfedor/watchtower --run-once open-webui"
