#
# enviornment
#

# add ruby 1.9 to path

export PATH=/usr/local/pear/bin:/usr/local/bin:/usr/local/Cellar/ruby/1.9.2-p290/bin:~/.php:$PATH

# colour terminal

export CLICOLOR=1

# trusty editor

export EDITOR=vim

# grep colour mode

export GREP_OPTIONS='--color=auto'

#
# include aliases
#

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

#
# functions
#

# addsvn()
#
# list unversioned files
# usage: addsvn | xargs svn add

function addsvn() { svn st | grep ? | awk '{ print $2 }'; }

# tmp
#
# cd to tmp and optionally create and cd 
# into a subdir for throwaway cli work

function tmp() { 
    cd /tmp 
    echo 'Switching to /tmp' 
    if [[ -n $1 ]]; then
        echo 'Creating' $1
        mkdir $1
        if [[ 0 -eq $? ]]; then
            echo 'Switching to' $1
            cd $1
        fi
    fi
}

