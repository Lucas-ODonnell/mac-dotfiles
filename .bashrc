if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
case $- in
    *i*) ;;
      *) return;;
esac

alias ls="ls -a --color=auto"
alias tmux="TERM=screen-256color-bce tmux"


# --- rbenv ------------------------
eval "$(rbenv init - bash)"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)" 
RL=$(brew --prefix readline) 
FF=$(brew --prefix libffi) 
export LDFLAGS="-L${RL}/lib -L${FF}/lib" 
export CPPFLAGS="-I${RL}/include -I${FF}/include" 
export optflags="-Wno-error=implicit-function-declaration" 


# --- nvm --------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# --- pyenv --------------------------
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"


# --- git-bash-prompt --------------------------
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi
# see https://github.com/magicmonty/bash-git-prompt for more config options
export GIT_PROMPT_SHOW_UPSTREAM=1
export GIT_PROMPT_SHOW_UNTRACKED_FILES=all
export GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=1

bind '"\ec": capitalize-word'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
bind '"\C-p": " \C-e\C-u`__fzf_cd__`\e\C-e\er\C-m"'
export PATH="$PATH:/root/.local/bin"
export FZF_DEFAULT_COMMAND="fd -t f --hidden . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d --hidden . $HOME"
export FZF_DEFAULT_OPTS='--height 40% --border'


