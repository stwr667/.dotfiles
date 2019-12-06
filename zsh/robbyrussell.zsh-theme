function get_region_and_rails_env() {
  if [[ "$PWD" =~ "workspace/website" ]]; then
    if [ "$RAILS_ENV" = "" ]; then
      rails_env_tmp=dev
    else
      rails_env_tmp=$RAILS_ENV
    fi

    if [[ -v "$AGW_database_name" ]]; then
      append_db_name_tmp=":$AGW_database_name"
    fi

    if [[ "$AGW_region" = "" || "$AGW_region" = "au" ]]; then
      region_tmp="au"
    else
      region_tmp="**$AGW_region:u**" # the :u converts the $AGW_region to uppercase in ZSH
    fi

    echo " $region_tmp:$rails_env_tmp$append_db_name_tmp"
  else
    return
  fi
}

PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%}'
PROMPT+='%{$fg[yellow]%}$(get_region_and_rails_env)%{$reset_color%} '
PROMPT+='$(git_prompt_info)'
PROMPT+='$ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
