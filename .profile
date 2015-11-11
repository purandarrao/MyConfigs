# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi  
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH=$PATH:/usr/local/go/bin:/home/vagrant:/home/vagrant/gopath/bin
export GOPATH=/home/vagrant/gopath
export GOBIN=/home/vagrant/gopath/bin

# ignore continuous and also all duplicates from history
export HISTCONTROL=ignoredups:erasedups

# Do not store in history
export HISTCONTROL=$HISTCONTROL:ignorespace

export ENDPOINT_RELAY_URL="http://10.0.2.15:8080/"

#export JAVA_HOME=/home/vagrant/java/jdk1.8.0_60
export JAVA_HOME=/home/vagrant/java/jdk1.7.0_79
export PATH=$JAVA_HOME/bin:$PATH

export PATH=$PATH:/home/vagrant/ServiceBroker/cloud-cli/bin
export PYTHONPATH=/home/vagrant/cns-lb-service/lb-common/:/home/vagrant/cns-lb-service/cfs-python-utils-flask-framework/

export PS1='$(__git_ps1) \w\$ '
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
