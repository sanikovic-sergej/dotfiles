fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zman )
source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zman/zman.plugin.zsh
fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-agkozak-SLASH-zsh-z )
source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-agkozak-SLASH-zsh-z/zsh-z.plugin.zsh
fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-completions )
source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-completions/zsh-completions.plugin.zsh
fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/completion )
source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-mattmc3-SLASH-zephyr/plugins/completion/completion.plugin.zsh
if ! (( $+functions[zsh-defer] )); then
  fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-defer )
  source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-defer/zsh-defer.plugin.zsh
fi
fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-olets-SLASH-zsh-abbr )
zsh-defer source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-olets-SLASH-zsh-abbr/zsh-abbr.plugin.zsh
fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-autosuggestions )
zsh-defer source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zdharma-continuum-SLASH-fast-syntax-highlighting )
zsh-defer source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zdharma-continuum-SLASH-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-history-substring-search )
zsh-defer source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-zsh-users-SLASH-zsh-history-substring-search/zsh-history-substring-search.plugin.zsh
fpath+=( $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-jeffreytse-SLASH-zsh-vi-mode )
source $HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-jeffreytse-SLASH-zsh-vi-mode/zsh-vi-mode.plugin.zsh
