echo "Loading ~/.profile"

#
# Added by homebrew, originally to .zprofile
#
eval $(/opt/homebrew/bin/brew shellenv)

# BASH completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

#export PROJECT_HOME="$HOME/Sites"
#export VIRTUALENVWRAPPER_PYTHON="/opt/local/bin/python3.6"
#export VIRTUALENVWRAPPER_VIRTUALENV="/opt/local/bin/virtualenv-3.6"
#export VIRTUALENVWRAPPER_VIRTUALENV_CLONE="/opt/local/bin/virtualenv-clone-3.6"
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--python=/opt/local/bin/python3.5"
#source /opt/local/bin/virtualenvwrapper.sh-3.6

#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Sites
#source /usr/local/bin/virtualenvwrapper.sh

export GDAL_LIBRARY_PATH="/Library/Frameworks/GDAL.framework/Versions/1.11/GDAL"
export GEOS_LIBRARY_PATH="/Library/Frameworks/GEOS.framework/Versions/3/GEOS"
export PATH="/Library/Frameworks/GDAL.framework/Versions/1.11/Programs:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\n fi
#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Add my local bin folder to path
# This needs to be after the pyenv commands to make sure the symlink to fab in
# the bin folder gets found before pyenv find fab in a virtual environment
export PATH="$HOME/bin:$PATH"

# Also, as per cookiecutter instructions
export PATH=$HOME/.local/bin:$PATH

# Java (installed for Elasticsearch at DEV)
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

#
# MySQL 5.7
#
# Added, I think, because some old projects at DEV require it...
#
export PATH="/usr/local/opt/mysql@5.7/bin:/usr/local/Cellar/mysql@5.7/5.7.24/bin/:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include $CPPFLAGS"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig $PKG_CONFIG_PATH"


#
# Added for `pipenv install psycopg2`
#
export LDFLAGS="-L/usr/local/lib -L/usr/local/opt/openssl/lib -L/usr/local/opt/readline/lib $LDFLAGS"

# Different suggestions that worked for Beth:
# env LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib" pip install psycopg2


#
# zlib
#
# Installed to allow pyenv to install new Python versions with
# `pyenv install 3.7.1`. zlib needs to be installed with homebrew and then, for
# compilers, etc., to be able to find zlib we need the settings below.
#

# For compilers to find zlib you may need to set:
export LDFLAGS="-L/usr/local/opt/zlib/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/zlib/include $CPPFLAGS"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig $PKG_CONFIG_PATH"


#
# sqlite3
#
# Added this when running Wagtail with the default getting started commands and
# setup (where it uses sqlite3). Turns out pyenv doesn't install python 3.7 with
# sqlite even if it is on the system (`which sqlite3`) unless it's given the
# headers and the libraries, so here they are.
export LDFLAGS="-L/usr/local/opt/sqlite/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/sqlite/include $CPPFLAGS"


#
# AWS Vault for DEV
#
export AWS_VAULT_KEYCHAIN_NAME="login"
export AWS_SESSION_TTL="15m"
export AWS_ASSUME_ROLE_TTL="1h"


#
# Workaround for OpenSSL and Python 2 problems
#
# See documentation here: https://www.notion.so/developersociety/Homebrew-fedde48045014672bf1d43f72b7546da#cb595ae65ad24b98b4e75c9d0ba146ba
# I removed /usr/local/bin from /etc/paths - it was the first entry there and I
# couldn't work out how to do it here with zsh
export PATH="/usr/local/Cellar/pyenv/1.2.20/bin:$PATH"


#
# How OpenSSL recommends OpenSSL be configured
#

# If you need to have openssl@1.1 first in your PATH run:
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib $LDFLAGS"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include $CPPFLAGS"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig $PKG_CONFIG_PATH"


#
# GeoIP setup - required for Lumos donations
#
export DJANGO_GEOIP_PATH="/usr/local/var/GeoIP/GeoLite2-Country.mmdb"
