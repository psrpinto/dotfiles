alias v='vagrant';

# in vagrant, the git status indicator is unacceptably slow so we disable it
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}${ZSH_THEME_GIT_PROMPT_CLEAN}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
}

if [ $(whoami) = 'vagrant' ]; then
  cd /vagrant
fi
