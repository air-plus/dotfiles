if [[ ! -f ${zinit_home_escaped}/${ZINIT_REPO_DIR_NAME}/zinit.zsh ]]; then
  print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}${ZINIT_REPO}%F{220})…%f"
  command mkdir -p "${zinit_home_escaped}" && command chmod g-rwX "${zinit_home_escaped}"
  command git clone https://github.com/${ZINIT_REPO} "${zinit_home_escaped}/${ZINIT_REPO_DIR_NAME}" && \\
    print -P "%F{33} %F{34}Installation successful.%f%b" || \\
    print -P "%F{160} The clone has failed.%f%b"
fi

source "${zinit_home_escaped}/${ZINIT_REPO_DIR_NAME}/zinit.zsh"
autoload -Uz _zinit
(( \${+_comps} )) && _comps[zinit]=_zinit

zinit lucid light-mode for \
  zdharma-continuum/zinit-annex-as-monitor \
  zdharma-continuum/zinit-annex-bin-gem-node \
  zdharma-continuum/zinit-annex-patch-dl \
  zdharma-continuum/zinit-annex-rust

zinit lucid light-mode for \
  OMZL::history.zsh \
  OMZL::completion.zsh \
  OMZL::key-bindings.zsh

zinit ice wait lucid blockf atload"zpcompinit; zpcdreplay"
zinit light zsh-users/zsh-completions

zinit ice wait lucid
zinit light Aloxaf/fzf-tab

zinit ice wait lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light zdharma-continuum/fast-syntax-highlighting

source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"

for file in "$HOME"/.config/zsh/{envs,aliases,funcs}.sh; do
  [[ -f "$file" ]] && source "$file"
done

eval "$(starship init zsh)"
fastfetch -l arch -c examples/10
