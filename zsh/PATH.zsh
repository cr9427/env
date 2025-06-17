preList PATH /opt/homebrew/opt/coreutils/libexec/gnubin
preList PATH /usr/local/opt/coreutils/libexec/gnubin
preList PATH /opt/homebrew/opt/mysql-client/bin
preList PATH /usr/local/opt/mysql-client/bin
preList PATH /home/linuxbrew/.linuxbrew/bin
preList PATH ${HOME}/run/${OS}/bin
preList PATH ${HOME}/bin
appList PATH /usr/local/sbin
appList PATH /usr/sbin
appList PATH /sbin
appList PATH /opt/puppetlabs/bin
appList PATH /opt/puppetlabs/pdk/bin

export  DYLD_LIBRARY_PATH="-L"
appList DYLD_LIBRARY_PATH /opt/homebrew/opt/mariadb-connector-c/lib
appList DYLD_LIBRARY_PATH /opt/homebrew/lib
