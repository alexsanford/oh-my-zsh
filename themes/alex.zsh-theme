
function precmd()
{
    HOST='%{$fg[cyan]%}$(whoami)@$(hostname -s)%{$reset_color%}'
    DIR='%{$fg[red]%}%~%{$reset_color%}'
    RVM='%{$fg[yellow]%}$(rvm current)%{$reset_color%}'
    DATE=' {%{$fg[green]%}'`date +%H:%M:%S`'%{$reset_color%}}'

    if git status &>/dev/null
    then
        GIT=' %{$reset_color%}[%{$fg[yellow]%}$(git_prompt_info)%{$reset_color%}]'
    else
        GIT=''
    fi

    PROMPT="
$HOST:$DIR$GIT$DATE
%# "
}

ZSH_THEME_GIT_PROMPT_PREFIX="git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
