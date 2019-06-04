# for easy updating/upgrading
alias upgrade='sudo apt update && sudo apt upgrade'
alias update='sudo apt update'
alias install='sudo apt install'
alias asd='mesleep'
alias i3conf='cd ~/dotfiles && nvim i3/.config/i3/config'
alias pipes.sh='pipes.sh -R -r 0 -s 6 -p 15 -f 100'
# work stuff
alias tehdenservice='cd ~/Tehden/tehdenservice; source env/bin/activate'
alias tehden='cd ~/Sites/tehden'
alias vagge='cd ~/Dev/Vagrant/vagrant-tehden-development && export VAGRANT_USE_VAGRANT_TRIGGERS="true" && vagrant reload'
alias vaggeno='cd ~/Dev/Vagrant/vagrant-tehden-development && export VAGRANT_USE_VAGRANT_TRIGGERS="true" && vagrant halt'
# ugly as hell and inefficent, but works
alias vaggetest='cd ~/Dev/Vagrant/vagrant-tehden-development && vagrant ssh -- -t "cd /srv/tehden; ./vendor/bin/codecept tehden:testdb:createtemplate; ./vendor/bin/codecept run unit; /bin/bash"'
alias ll='ls -lAh'
alias tasks='task list sort:project'
alias wttr='curl wttr.in/Turku?lang=en'
alias exp='expressvpn'
alias bt='bluetoothctl'
alias website='ssh root@51.15.134.113'
