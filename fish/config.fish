# Disable greeting message when starting shell
set -g fish_greeting

fish_add_path ~/.cargo/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

# Load Starship
set STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
starship init fish | source
