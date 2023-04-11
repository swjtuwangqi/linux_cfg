# vim ~/.bashrc 

# add below code : 
<< BLOCK

# # aditional bashrc config
PC=wsl
if [ $PC == 161 ]; then
    cfg_path=~/Documents/MyRepo/linux_cfg/bashrc/
    alias_path=~/Documents/MyRepo/linux_cfg/bashrc/alias_p
elif [ $PC == wsl ]; then
    cfg_path=/mnt/d/MyRepo/linux_cfg/bashrc/
    alias_path=/mnt/d/MyRepo/linux_cfg/bashrc/alias_p
fi

if [ -e  $cfg_path.bashrc2 ] ; then
    . $cfg_path.bashrc2
    . $alias_path
    echo 'bash'
else
    echo 'no bashrc2.'
fi

BLOCK

alias cd..="cd .."

# git branch
function git_branch_func {
branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
if [ "${branch}" != "" ];then
    if [ "${branch}" = "(no branch)" ];then
        branch="`git rev-parse --short HEAD`..."
    fi
    echo "[$branch]"
fi
}
# this is for debug git branch.
# export PS1='>>> $(git_branch_func) >>>'

# terminal prompt
function my_color_prompt() {
    # color define
    local last_cmd=$?
    local txtreset='$(tput sgr0)'
    local txtbold='$(tput bold)'
    local txtblack='$(tput setaf 0)'
    local txtred='$(tput setaf 1)'
    local txtgreen='$(tput setaf 2)'
    local txtyellow='$(tput setaf 3)'
    local txtblue='$(tput setaf 4)'
    local txtpurple='$(tput setaf 5)'
    local txtcyan='$(tput setaf 6)'
    local txtwhite='$(tput setaf 7)'
    # unicode "✗"
    local fancyx='\342\234\227'
    # unicode "✓"
    local checkmark='\342\234\223'

    PS1_str=""

    # : Full date + full time (24h)
    PS1_str+="\[$txtcyan\][\D{%A %d %B %Y %H:%M:%S}] "
    # git branch
    # PS1_str+="\[$txtbold\]\[$txtpurple\]$(git_branch_func)"
    PS1_str+='$(git_branch_func) \n'
    # : current path
    PS1_str+="\[$txtcyan\][\\w] "

    # a red "✗" for last cmd the error number
    if [[ $last_cmd != 0 ]]; then
        PS1_str+="\[$txtred\]$fancyx \[$txtwhite\]($last_cmd)"
    fi
    PS1_str+="\n"
    #
    PS1_str+=" \[$txtbold\]\[$txtyellow\]>>> "
    # input cmd color
    PS1_str+="\[$txtgreen\]"

    PS1_str+="\[$txtgreen\]"

    echo "$PS1_str"
}

# my_color_prompt
export PS1=$(my_color_prompt)

