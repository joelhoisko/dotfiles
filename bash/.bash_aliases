# for easy updating/upgrading
alias upgrade='sudo apt update && sudo apt upgrade'
alias update='sudo apt update'
alias install='sudo apt install'
alias asd='mesleep'
alias i3conf='cd ~/dotfiles && nvim i3/.config/i3/config'
alias pipes.sh='pipes.sh -R -r 0 -s 6 -p 15 -f 100'
# work stuff
alias tehdenservice='cd ~/Tehden/tehdenservice'
alias tehden='cd ~/Sites/tehden'
alias vagge='cd ~/Dev/Vagrant/vagrant-tehden-development && vagrant reload'
# ugly as hell and inefficent, but works
alias vaggetest='cd ~/Dev/Vagrant/vagrant-tehden-development && vagrant ssh -- -t "cd /srv/tehden; ./vendor/bin/codecept tehden:testdb:createtemplate; ./vendor/bin/codecept run unit; /bin/bash"'
alias ll='ls -lAh'
alias tasks='task list sort:project'
alias wttr='curl wttr.in/Turku?lang=en'
