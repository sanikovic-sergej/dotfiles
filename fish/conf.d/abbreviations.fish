abbr --add vim nvim
abbr --add vi nvim
abbr --add nv nvim

# Directory Listing aliases
abbr --add dir 'ls -hFx'
abbr --add l. 'ls -d .* --color=tty' # short listing, only hidden files - .*
abbr --add la 'ls -Al' # show hidden files
abbr --add lh 'ls -lSrh' # sort by size human readable

abbr --add src "source ~/.zshrc"
abbr --add src-tmux "tmux source-file ~/.config/tmux/tmux.conf"
abbr --add today 'date +"%A, %B %-d, %Y"'
abbr --add weeknum 'date +%V'
abbr --add qfind "find . -name " # qfind:    Quickly search for file

abbr --add config-nvim "nvim ~/.config/nvim/"
abbr --add config-fish "nvim ~/.config/fish/config.fish"
abbr --add config-fish-aliases "nvim ~/.config/fish/conf.d/abbreviations.fish"
abbr --add config-tmux "nvim ~/.config/tmux/tmux.conf"
abbr --add config-alacritty "nvim ~/.config/alacritty/alacritty.toml"
abbr --add config-starship "nvim ~/.config/starship/starship.toml"

abbr --add dotfiles "cd ~/.dotfiles"

abbr --add cat bat

abbr --add lg lazygit
abbr --add git_config_debug "git config --list --show-origin --show-scope"

abbr --add setup_amd_export_llm_magic "export HSA_OVERRIDE_GFX_VERSION=10.3.0 export HIP_VISIBLE_DEVICES=0 export PYTORCH_HIP_ALLOC_CONF=garbage_collection_threshold:0.95,max_split_size_mb:512"

abbr --add sd-automatic "source ~/Projects/stable-diffusion/stable-diffusion-webui/venv/bin/activate && ~/Projects/stable-diffusion/stable-diffusion-webui/webui.sh"
abbr --add sd-comfyui "source ~/Projects/stable-diffusion/ComfyUI/venv/bin/activate && HSA_OVERRIDE_GFX_VERSION=10.3.0 HIP_VISIBLE_DEVICES=0 PYTORCH_HIP_ALLOC_CONF=expandable_segments:True python ~/Projects/stable-diffusion/ComfyUI/main.py"
abbr --add setup_amd_export_llm_magic "export HSA_OVERRIDE_GFX_VERSION=10.3.0 export HIP_VISIBLE_DEVICES=0 export PYTORCH_HIP_ALLOC_CONF=garbage_collection_threshold:0.8,max_split_size_mb:512"
abbr --add update-open-webui "docker run --rm -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --run-once open-webui"
